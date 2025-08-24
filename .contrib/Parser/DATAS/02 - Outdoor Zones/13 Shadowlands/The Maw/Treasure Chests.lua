---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(THE_MAW, {
		n(TREASURES, {	-- Treasure Chest
			o(369132, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Domination Sealed Chest
				["coord"] = { 66.0, 57.4, THE_MAW },
				["questID"] = 64207,
				["cost"] = { { "i", 186727, 4 } },	-- 4x Seal Breaker Key
				["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
				["groups"] = {
					o(369133, {	-- Domination Seal #1
						["questID"] = 64204,
						["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
					}),
					o(369135, {	-- Domination Seal #2
						["questID"] = 64205,
						["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
					}),
					o(369134, {	-- Domination Sealed Cage
						["questID"] = 64208,
						["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
					}),
					o(369138, {	-- Domination Chest Seal
						["questID"] = 64206,
						["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
					}),
					i(186607),	-- Nilganihmaht's Silver Ring
				},
			})),
			o(369129, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Nilganihmaht's Gold Band
				["description"] = "Start climbing up at |cFFFFFFFF18.6, 39.0|r.",
				["coord"] = { 19.2, 32.3, THE_MAW },
				["groups"] = {
					i(186608),	-- Nilganihmaht's Gold Band
				},
			})),
			o(369602, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Hands of Defiance
				["coord"] = { 25.5, 36.8, THE_MAW },
				["groups"] = {
					i(187255),	-- Hands of Defiance: A Chronicle of Woe
				},
			})),
			o(369145, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Helgarde Supply Cache
				["description"] = "This chest does not glow or sparkle. After the first loot of these chests, which will drop the key, they are repeatable and appear to just drop Stygia.",
				["coords"] = {
					{ 62.2, 51.6, THE_MAW },
					{ 65.7, 61.2, THE_MAW },
					{ 67.3, 49.0, THE_MAW },
					{ 67.7, 53.1, THE_MAW },
					{ 68.2, 48.1, THE_MAW },
					{ 68.7, 42.6, THE_MAW },
				},
				["questID"] = 62682,
				["groups"] = {
					i(186727),	-- Seal Breaker Key
				},
			})),
			o(369216, {	-- Helsworn Chest
				["coord"] = { 69.2, 45.2, THE_MAW },
				["questID"] = 64256,
				["isDaily"] = true,
				["groups"] = {
				--	Epics
					i(187017),	-- Brutalizer's Mantle
					i(187240),	-- Field Warden's Watchful Eye
					i(187026),	-- Field Warden's Torture Kit
					i(187019),	-- Infiltrator's Shoulderguards
					i(187024),	-- Necromancer's Mantle
					i(187014),	-- Shackler's Spiked Shoulders
				--	Consumable (pale blue/special)
					i(187351, {	-- Stygic Cluster
						currency(1767),	-- Stygia
					}),
				--	Blues
					i(185902),	-- Iron Maiden's Toolkit
				},
			}),
			o(369224, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Jeweled Heart of Ezekiel
				["description"] = "In a small cave.",
				["coord"] = { 66.5, 62.2, THE_MAW },
				["questID"] = 64261,
				["groups"] = {
					i(187352),	-- Jeweled Heart of Ezekiel
				},
			})),
			n(173841, {	-- Paper Scrap
				["description"] = "A tiny |cFFFFFFFFPaper Scrap|r on some rocks.",
				["coord"] = { 19.3, 33.5, THE_MAW },
				["groups"] = {
					i(183063),	-- Words of the Warden
				},
			}),
			o(364560, {	-- Stygian Cache
				["coords"] = {
					{ 15.7, 50.5, THE_MAW },
					{ 19.4, 33.0, THE_MAW },
					{ 19.7, 44.6, THE_MAW },
					{ 19.8, 55.0, THE_MAW },
					{ 24.2, 16.4, THE_MAW },
					{ 25.5, 36.6, THE_MAW },
					{ 26.7, 29.2, THE_MAW },
					{ 27.6, 45.7, THE_MAW },
					{ 27.6, 71.9, THE_MAW },
					{ 28.4, 25.4, THE_MAW },
					{ 29.6, 12.8, THE_MAW },
					{ 34.2, 61.9, THE_MAW },
					{ 35.2, 16.3, THE_MAW },
					{ 35.9, 23.6, THE_MAW },
					{ 39.7, 25.1, THE_MAW },
					{ 40.3, 61.4, THE_MAW },
					{ 44.3, 18.7, THE_MAW },
					{ 44.8, 48.5, THE_MAW },
					{ 45.2, 47.4, THE_MAW },
					{ 47.4, 76.2, THE_MAW },
					{ 50.8, 84.0, THE_MAW },
					{ 56.2, 63.2, THE_MAW },
					{ 61.4, 50.7, THE_MAW },
					{ 40.1, 80.6, 1820 },	-- Pit of Anguish
				},
			}),
			n(173811, {	-- Subject 638
				["coord"] = { 35.8, 45.5, THE_MAW },
				["groups"] = {
					i(183069),	-- Tormentor's Notes
				},
			}),
			o(369144, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- The Harrower's Key Ring
				["description"] = "Entrance at 66.9, 55.9.\n\nKey Ring is hanging on the right side wall.",
				["coords"] = {
					{ 65.6, 60.0, THE_MAW },	-- Key Ring
					{ 66.9, 55.9, THE_MAW },	-- Entrance
				},
				["questID"] = 62680,
				["groups"] = {
					i(186727),	-- Seal Breaker Key
				},
			})),
			n(173837, {	-- Torture Implements
				["description"] = "Once you are inside the cave, you can find the box of |cFFFFFFFFTorture Implements|r at the back, around |cFFFFFFFF72.8, 16.9|r.",
				["coord"] = { 27.7, 20.2, THE_MAW },
				["groups"] = {
					i(183060),	-- Box of Torments
				},
			}),
			o(368666, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Lil'Abom's Head
				["coords"] = {
					{ 27.4, 56.6, THE_MAW },
					{ 30.3, 63.3, THE_MAW },
					{ 32.1, 56.0, THE_MAW },
				},
				["questID"] = 64010,
				["isDaily"] = true,
				["groups"] = {
					i(186183),	-- Lil' Abom Head
				},
			})),
			o(368663, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Lil'Abom's Right Hand
				["description"] = "At the back of the cave, behind a rock on the left side.",
				["coord"] = { 38.5, 58.5, THE_MAW },
				["questID"] = 64008,
				["isDaily"] = true,
				["groups"] = {
					i(186186),	-- Lil' Abom Right Hand
				},
			})),
			o(368665, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Lil'Abom's Spare Arm
				["coords"] = {
					{ 33.3, 65.8, THE_MAW },
					{ 39.2, 66.5, THE_MAW },
				},
				["questID"] = 64009,
				["isDaily"] = true,
				["groups"] = {
					i(186187),	-- Lil' Abom Spare Arm
				},
			})),
			o(368667, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Lil'Abom's Torso
				["coords"] = {
					{ 36.4, 64.4, THE_MAW },
					{ 36.9, 67.4, THE_MAW },
					{ 39.9, 62.6, THE_MAW },
				},
				["questID"] = 64011,
				["isDaily"] = true,
				["groups"] = {
					i(186184),	-- Lil' Abom Torso
				},
			})),
			o(368668, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Lil'Abom's Trunk
				["coord"] = { 29.4, 67.2, THE_MAW },
				["questID"] = 64013,
				["isDaily"] = true,
				["groups"] = {
					i(186185),	-- Lil' Abom Legs
				},
			})),
		}),
	}),
})));
