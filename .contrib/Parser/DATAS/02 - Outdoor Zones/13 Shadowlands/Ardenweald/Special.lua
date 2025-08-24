---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(SPECIAL, {
			i(182599, {	-- Bucket of Clean Water
				["cost"] = { { "i", 182620, 1 } },	-- 1x Empty Water Bucket
			}),
			i(180652, {	-- Fae Dreamcatcher
				["description"] = "Used to dispel the barrier at |cFFFFFFFF36.1, 65.2|r.",
				["cost"] = {
					{ "i", 180656, 1 },	-- Enchanted Bough
					{ "i", 180654, 1 },	-- Fae Ornament
					{ "i", 180655, 1 },	-- Raw Dream Fibers
				},
			}),
			n(171206, {	-- Playful Vulpin
				["description"] = "You need to find the Playful Vulpin five times and use the following emotes.\n\n 1. Playful Vulpin begins to dig curiously. |cFFFFFFFF/curious|r\n 2. Playful Vulpin wanders around unable to sit still. |cFFFFFFFF/sit|r\n 3. Playful Vulpin sings all alone. |cFFFFFFFF/sing|r\n 4. Playful Vulpin dances with joy. |cFFFFFFFF/dance|r\n 5. Playful Vulpin sits down lonely and sad. |cFFFFFFFF/pet|r\n\nIt only counts if the Playful Vulpin reacts to your emote and runs away.",
				["coords"] = {
					{ 32.0, 43.2, ARDENWEALD },
					{ 33.0, 43.9, ARDENWEALD },
					{ 34.1, 44.9, ARDENWEALD },
					{ 36.1, 49.6, ARDENWEALD },
					{ 40.7, 27.4, ARDENWEALD },
					{ 40.8, 51.4, ARDENWEALD },
					{ 41.2, 49.7, ARDENWEALD },
					{ 43.0, 64.9, ARDENWEALD },
					{ 44.1, 66.6, ARDENWEALD },
					{ 46.4, 66.5, ARDENWEALD },
					{ 48.5, 59.1, ARDENWEALD },
					{ 50.9, 54.6, ARDENWEALD },
					{ 63.2, 26.1, ARDENWEALD },
					{ 64.3, 29.5, ARDENWEALD },
					{ 64.9, 22.9, ARDENWEALD },
					{ 66.4, 31.1, ARDENWEALD },
					{ 67.1, 28.8, ARDENWEALD },
					{ 67.8, 32.0, ARDENWEALD },
					{ 69.1, 30.0, ARDENWEALD },
					{ 70.4, 29.7, ARDENWEALD },
					{ 72.3, 31.4, ARDENWEALD },
				},
				["questID"] = 61086,
				["groups"] = {
					q(61080, {	-- /curious
						["name"] = "/curious",
					}),
					q(61081, {	-- /sit
						["name"] = "/sit",
					}),
					q(61084, {	-- /sing
						["name"] = "/sing",
					}),
					q(61085, {	-- /dance
						["name"] = "/dance",
					}),
					q(61078, {	-- /pet
						["name"] = "/pet",
					}),
					i(180645),	-- Dodger (PET!)
				},
			}),
			header(HEADERS.NPC, 168135, {	-- Night Mare
				["description"] = "Enable Debug Mode to view all the steps.\n\nYou will need at least 2 |cFFFFFFFFGoblin Gliders|r and 10 |cff16bf0dLightless Silk|r. (I encountered a bug where, until I had more than 10 cloth in my bags, I could not progress to the next step, so you may want to bring a few extra.)\n\nYou will also need to have completed the 'Trouble at the Gormling Corral' and 'Tricky Spriggans' criteria of the |cffffff00Sojourner of Ardenweald|r achievement. You must also fight a 62 rare elite, so bringing a couple friends along is a good idea.",
				["groups"] = {
					i(181243, {	-- Broken Soulweb
						["description"] = "Go to |cFFFFFFFF18.0, 62.0|r. You will have to go through a couple areas with lots of elite mobs, but if you don't get dismounted you can avoid having to fight almost all of them.\n\nUse your first |cFFFFFFFFGoblin Glider|r to fly a short distance to a wide root that goes up and to the left.\n\nWalk along the root system until you get to |cFFFFFFFF19.0, 63.4|r.\n\nUse your second |cFFFFFFFFGoblin Glider|r to fly to the circular platform to the northeast. When you land, there will be a cart to your right, at |cFFFFFFFF19.7, 63.5|r. Behind it is an object called Cracked Soulweb, which contains the |cFFFFFFFFBroken Soulweb|r item.",
					}),
					i(181242, {	-- Repaired Soulweb
						["description"] = "Take the |cFFFFFFFFBroken Soulweb|r to Elder Gwenna in Glitterfall Basin. Give her 10 |cff16bf0dLightless Silk|r and she will repair the |cFFFFFFFFBroken Soulweb|r.",
						["crs"] = { 165704 },	-- Elder Gwenna
						["sourceQuests"] = {
							59656,	-- Well, Tell the Lady
							57871,	-- Outplayed
						},
						["coord"] = { 50.4, 33.0, ARDENWEALD },
						["cost"] = { { "i", 173204, 10 } },	-- 10x Lightless Silk
					}),
					i(178675, {	-- Dream Catcher
						["description"] = "Take the |cff16bf0dRepaired Soulweb|r to Ysera.\n\nMembers of the |cFFA330C9Night Fae Covenant|r can speak to Ysera inside the Heart of the Forest. Members of other covenants can speak to one of the Elite Queensguard at |cFFFFFFFF47.8, 53.2|r, and Ysera will come out to upgrade the item.\n\nI encountered a bug where Ysera did not upgrade my green item to blue with her first cast. It took about a minute for the Queensguard NPCs to be interactable again, and the second time I spoke to Ysera she did upgrade my item.",
					}),
					n(168135, {	-- Night Mare
						["description"] = "Take the |cff045ab3Dream Catcher|r behind Hibernal Hollow and use it at |cFFFFFFFF62.5, 51.6|r to phase to the Night Mare's realm.",
						["coord"] = { 62.5, 51.6, ARDENWEALD },
						["questID"] = 60306,
						["isDaily"] = true,
						["groups"] = {
							i(180728),	-- Swift Gloomhoof (MOUNT!)
						},
					}),
				},
			}),
			n(171699, {	-- Shimmermist Runner
				["description"] = "To complete the maze correctly, follow the blue lanterns at every step.\n\n1. Enter Mistveil Tangle through the Oaken Assembly at |cFFFFFFFF31.0, 54.5|r. Two blue lanterns hang on either side of a vine arch.\n\n2. Head down the hill and turn left at |cFFFFFFFF29.6, 56.3|r. Again, two blue lanterns hang on either side of a vine arch.\n\n3. Turn right at |cFFFFFFFF29.8, 57.8|r. A single blue lamp hangs from the vine arch.\n\n4. Turn left at |cFFFFFFFF29.2, 58.5|r. A single blue lamp is on the ground.\n\n5. Immediately turn right through the arch at |cFFFFFFFF28.9, 58.8|r. A single blue lamp hangs on the left side.\n\n6. Go through the arch at |cFFFFFFFF28.1, 58.1|r. A single blue lamp is on the ground on the right side of the arch.\n\n7. Go straight to the area on the map where the Tame Gladerunner treasure is displayed. If you've done the maze correctly Shizgher will not fade out of view. Defeat him, and then click on the Shimmermist Runner to collect it.",
				["crs"] = { 171767 },	-- Shizgher
				["coords"] = {
					{  31.0, 54.5, ARDENWEALD },	-- start
					{  29.6, 56.3, ARDENWEALD },	-- 1
					{  29.8, 57.8, ARDENWEALD },	-- 2
					{  29.2, 58.5, ARDENWEALD },	-- 3
					{  28.9, 58.8, ARDENWEALD },	-- 4
					{  28.1, 58.1, ARDENWEALD },	-- 5
					{  27.5, 57.8, ARDENWEALD },	-- 6
				},
				["questID"] = 61192,
				["groups"] = {
					i(180727),		-- Shimmermist Runner (MOUNT!)
				},
			}),
			n(181694, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Lost Soul (Cat)
				["description"] = "This soul is found in the crotch of one of the six super trees in Ardenweald. Target and use /soothe on the Lost Soul to receive the quest.",
				["coords"] = {
					{ 37.6, 36.3, ARDENWEALD },
					{ 51.2, 31.0, ARDENWEALD },
					{ 51.8, 69.2, ARDENWEALD },
					{ 60.0, 55.1, ARDENWEALD },
					{ 65.1, 36.5, ARDENWEALD },
					{ 69.9, 27.3, ARDENWEALD },
				},
				["groups"] = {
					i(187819),	-- Cat Soul (SS!)
				},
			})),
		}),
	}),
})));
