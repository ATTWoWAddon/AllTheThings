-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	n(159783, {	-- Jenafur
		["description"] = "***Debug Mode is required to see all the steps.***\n",
		["groups"] = {
			hqt(58076, {	-- Step 1: Speak to Amara
				["name"] = "|cFFFFFFFFStep 1:|r Speak to Amara",
				["description"] = "|cFFFFFFFFStep 1:|r Go to |cFFFFFFFF17.4, 49.3|r in Ashenvale. Speak with |cFFFFD700Amara Lunastar|r and follow her dialogue about her cat.\n",
				["provider"] = { "n", 159799 },	-- Amara Lunastar
				["coord"] = { 17.4, 49.3, ASHENVALE },
			}),
			hqt(58098, {	-- Step 2: Empty Dish
				["name"] = "|cFFFFFFFFStep 2:|r Empty Dish",
				["description"] = "|cFFFFFFFFStep 2:|r Go inside the house at |cFFFFFFFF44.2, 53.0|r in Elwynn Forest to find the |cFFFFD700Empty Dish|r.\n",
				["provider"] = { "o", 339211 },	-- Empty Dish
				["sourceQuest"] = 58076,	-- Step 1: Speak to Amara
				["coord"] = { 44.2, 53.0, ELWYNN_FOREST },
				["lockCriteria"] = { 1, "questID", 58099 },	-- Amara's Wish
				["DisablePartySync"] = true,
			}),
			hqt(58099, {	-- Amara's Wish
				["name"] = "|cFFFFFFFFStep 3:|r Amara's Wish",
				["description"] = "|cFFFFFFFFStep 3:|r This step requires collecting various meats throughout |cffffd200Return to Karazhan|r and placing them in the Opera Hall to mimic a section of the Amara's Wish sheet music.\n\n|cffde1c1cOnce the items are picked up, you have 5 minutes to place them into the puzzle. Once placed, they despawn after 5 minutes and 20 seconds. Because of these time limits, it may be wise to ensure you have cleared the trash in the dungeon and have acquainted yourself with the locations of all the meats you need to pick up.\n\nTurn on Debug Mode to see descriptions for the locations of each meat and how to place them in the correct order!|r\n\nYou will need to collect items from Moroes' room as well as the hallways near Maiden of Virtue, and then take the items back to the audience area of the Opera Hall to place them.\n",
				["providers"] = {
					{ "n", 160374 },	-- Fishy Bits
					{ "n", 160370 },	-- Marbled Steak
					{ "n", 160371 },	-- Juicy Drumstick
					{ "n", 160373 },	-- Meaty Morsel
					{ "n", 160372 },	-- Slathered Rib
				},
				["sourceQuest"] = 58098,	-- Step 2: Empty Dish
				["coord"] = { 46.7, 70.1, DEADWIND_PASS },	-- Return to Karazhan entrance
				["groups"] = {
					n(160374, {	-- Fishy Bits (2)
						["description"] = "Two are required.\n\n|cFFFFFFFF1.|r The first Fishy Bits can be found in the hallway prior to Maiden of Virtue. Near the middle of hall on the left side, there is a doorway flanked by two lion statues. The Fishy Bits are just past the lion statues and before the left-hand bust directly after them, against the wall.\n\n|cFFFFFFFF2.|r The second Fishy Bits can be found in Moroes' room, very close to the boss's platform. It's between the bottom right corner of the platform and the upper left corner of the small right-hand table.\n",
						["itemID"] = 173787,	-- Fishy Bits
					}),
					n(160370, {	-- Marbled Steak (2)
						["description"] = "Two are required.\n\n|cFFFFFFFF1.|r Progress through the dungeon, killing the Opera boss, and head towards Maiden of Virtue. When you exit the Opera Hall, in the area before you turn towards Maiden, there is a wide hallway with two rugs, one red and one purple. The first Marbled Steak can be found on the right-hand edge of the purple rug.\n\n|cFFFFFFFF2.|r The second Marbled Steak is just before Maiden of Virtue in the last little room off to the left of the hallway. The Marbled Steak is in the upper-left corner of the antechamber, behind what looks like a very large, high-backed chair.\n",
						["itemID"] = 173780,	-- Marbled Steak
					}),
					n(160371, {	-- Juicy Drumstick (2)
						["description"] = "Two are required.\n\n|cFFFFFFFF1.|r The first Juicy Drumstick can be found close to the second Marbled Steak, in the last room before Maiden of Virtue. Head all the way into the room, and you will see the Juicy Drumstick on an ottoman in front of another high-backed chair. It's next to a tall candelabra and a portrait of a woman.\n\n|cFFFFFFFF2.|r The second Juicy Drumstick can be found in Moroes' room, in front of the boss's platform. It's closer to the small left-hand table, near the bottom edge of the big black and gold carpet.\n",
						["itemID"] = 173783,	-- Juicy Drumstick
					}),
					n(160373, {	-- Meaty Morsel
						["description"] = "Can be found about halfway down the hallway prior to Maiden of Vigilance. There is a section on the right-hand side with a rectangular table and three chairs between two bookshelves, all covered in cobwebs. The Meaty Morsel is on a tiny round table between the first bookshelf and chair.\n",
						["itemID"] = 173779,	-- Meaty Morsel
					}),
					n(160372, {	-- Slathered Rib
						["description"] = "Can be found in Moroes' room, on the right side of the long table. There are a couple on the table, but the easiest one to spot is on a gold platter sitting between a large roast pig and fish.\n",
						["itemID"] = 173777,	-- Slathered Rib
					}),
					o(9999921, {	-- Placement
						["description"] = "After you have all the meats collected, head back to the audience area of the Opera Hall. To orient yourself in the room, you want to have your back to the stage.\n\nYou will be placing each meat relative to two very tiny piles of kibble on the left side of the room (again, while faced away from the stage). You will probably need to zoom in to see them. Each tile on the floor represents a box in a 12-by-12 grid.\n\n|cff413f43 00|r = Empty cell\n|cff4db62c 00|r = Pile of Kibble\n|cffeea016 00|r = Fishy Bits\n|cffeee116 00|r = Juicy Drumstick\n|cff16ceee 00|r = Meaty Morsel\n|cffce16ee 00|r = Marbled Steak\n|cff9e5ced 00|r = Slathered Rib\n\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00|r|cffeee116 00|r|cff413f43 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00|r|cff9e5ced 00|r|cff413f43 00|r|cffeea016 00|r|cff413f43 00 00|r\n|cff413f43 00|r|cff4db62c 00|r|cff413f43 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00|r|cffce16ee 00|r|cff413f43 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00|r|cff16ceee 00|r|cff413f43 00 00 00 00 00 00|r\n|cff413f43 00|r|cff4db62c 00|r|cff413f43 00 00|r|cffeea016 00|r|cff413f43 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00|r|cffce16ee 00|r|cff413f43 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00|r|cffeee116 00|r|cff413f43 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n\nIf you have placed all the meats properly, Jenafur will spawn as soon as you finish. You can use |cFFFFFFFF/tar Jenafur|r to find her in the room, and then all you have to do is walk over and pet her for her to be added to your collection.\n",
					}),
					pet(2795),	-- Jenafur (PET!)
				},
			}),
		},
	}),
});
