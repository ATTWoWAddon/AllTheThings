-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	header(HEADERS.Spell, 247402, {	-- Lucid Nightmare
		["description"] = "***Quest tracking enabled is required to see all the steps.***",
		["modelScale"] = .8,
		["displayID"] = 78092,
		["groups"] = {
			o(270855, {	-- Step 1: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47826,
				["coord"] = { 50.6, 54.1, LEGION_DALARAN },
				["description"] = "|cFFFFFFFFStep 1:|r Go to |cFFFFFFFF50.6, 54.1|r in Broken Isles Dalaran. On the second floor of |cFFFFD700Curiosities & Moore|r you will see a table with three chairs. An |cFFFFD700Inconspicuous Note|r will be on the table. Click it. The note reads...\n\n|cFFFFFFFFIt begins in the 2104059.|r\n|cFFFFFFFFWith a most pleasing sign.|r\n|cFFFFFFFF(These letters will not always rhyme.)|r\n",
			}),
			o(272039, {	-- Step 2: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47837,
				["coord"] = { 41.5, 17.9, THE_STORM_PEAKS },	-- Ulduar
				["sourceQuest"] = 47826,	-- Step 1: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 2:|r This step requires visiting |cFFFFD700Ulduar|r. Head to |cFFFFD700XT-002 Deconstructor's|r room. Go to the trash pile in the upper-left corner of the map. You will see a broken body with blue legs on the ground. Look directly above it and you will see a head with a |cFFFFD700Rusty Lever|r. Click the lever to activate the lights in the middle of the Scrapyard. Click each light in the pattern below.\n\n0 = OFF     |cffcc33ff1|r = ON\n\n0 0 0 0 0 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 0 0 0 0 0 \n0 0 0 0 |cffcc33ff1|r 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 |cffcc33ff1|r 0 0 0 0 \n0 0 0 |cffcc33ff1 1 1|r 0 |cffcc33ff1 1 1 1 1 1|r 0 |cffcc33ff1 1 1|r 0 0 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 0 \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n0 0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 0 0 |cffcc33ff1 1 1|r 0 |cffcc33ff1 1 1 1 1 1|r 0 |cffcc33ff1 1 1|r 0 0 0 \n0 0 0 0 |cffcc33ff1|r 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 |cffcc33ff1|r 0 0 0 0 \n0 0 0 0 0 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 0 0 0 0 0 \n\nOnce you have turned on all the necessary lights, the next |cFFFFD700Inconspicuous Note|r will spawn in the middle. Click it. The note reads...\n\n|cFFFFFFFF1000 years imprisoned.|r\n|cFFFFFFFFSurely it wears on the mind.|r\n",
			}),
			o(272046, {	-- Step 3: Mind Larva
				["model"] = 202390,
				["questID"] = 47840,
				["coord"] = { 46.76, 7.53, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Temple of Ahn'Qiraj
				["sourceQuest"] = 47837,	-- Step 2: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 3:|r This step requires visiting |cFFFFD700Temple of Ahn'Qiraj|r. Go all the way through the instance, past |cFFFFD700C'thun|r's room into the room with three vendors. Once you see the three vendors, go up the stairs and you will see a table that has a glowing |cFFFFD700Mind Larva|r on it. Click the |cFFFFD700Mind Larva|r to activate a game similar to the |cFFFFD700Jewelcraft|r toy.\n\n|cffcc33ffTips: Hit Alt+Z to hide your interface and then scroll into first-person view. You can also use the right mouse button to turn your character around for easier viewing.|r\n\nYou need to play until you can line up five brains horizontally or vertically, or until you reach an unknown point cap. Just keep playing, and you'll eventually trigger it.|r\n",
			}),
			o(272061, {	-- Step 4: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47841,
				["coord"] = { 58.2, 25.5, DEEPHOLM },
				["sourceQuest"] = 47840,	-- Step 3: Mind Larva
				["description"] = "|cFFFFFFFFStep 4:|r The next |cFFFFD700Inconspicuous Note|r will spawn on the table. Click it. The note reads...\r\r|cFFFFFFFFDeeper than deep.|r\r|cFFFFFFFFAwaits your seat.|r\n",
			}),
			o(272163, {	-- Step 5: Strange Skull
				["model"] = 985300,
				["questID"] = 47849,
				["coords"] = {
					{ 63.7, 22.6, DEEPHOLM },
					{ 58.3, 25.6, DEEPHOLM },
				},
				["sourceQuest"] = 47841,	-- Step 4: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 5:|r First, obtain a |cFFFFD700Shadoweave Mask|r. |cffcc33ffNote: You will need the actual item; it cannot be transmogged on your character.|r\n\nThis step requires visiting Deepholm. Take the |cFFFFD700Therazane's Throne|r portal if it is available; otherwise, fly to |cFFFFFFFF58.3, 25.6|r and you will see a cave opening to |cFFFFD700Crumbling Depths|r.\n\nOnce you are in the cave, mount up and go past the |cFFFFD700Colossal Gyreworm|r into the next section of the cavern. Go to the big grey rock in the center of the room at |cFFFFFFFF63.7, 22.6|r and you will see a |cFFFFD700Dark Fissure|r. Click it. Once you click it, a warning will pop up, saying: \n\n|cffcc33ff'WARNING: you are about to fall into a dark fissure. You may not be able to climb back out again. Are you very sure you want to do this?'|r\n\nOnce inside the fissure, you will see a chair. Go behind the chair and click on the |cFFFFD700Dingy Plaque|r. The plaque reads... \r\r|cFFFFFFFFSupremacy?|r\r|cFFFFFFFFGet...|r\r|cFFFFFFFFShirk...|r\r|cFFFFFFFF...eke...|r\r\rThis will spawn a |cFFFFD700Strange Skull|r on the seat of the chair. Equip the Shadoweave Mask and interact with the |cFFFFD700Strange Skull|r and you will see a purple explosion.|r\n",
				["groups"] = {
					i(10025),	-- Shadoweave Mask
				},
			}),
			o(272165, {	-- Step 6: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47850,
				["coord"] = { 66.5, 36.0, VALSHARAH },
				["sourceQuest"] = 47849,	-- Step 5: Strange Skull
				["description"] = "|cFFFFFFFFStep 6:|r The next |cFFFFD700Inconspicuous Note|r spawns in front of the chair. Click it. The note reads...\r\r|cFFFFFFFFWhere the shaded delegate may appear.|r\n",
			}),
			o(272172, {	-- Step 7: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47852,
				["coord"] = { 30.11, 74.64, NEW_TINKERTOWN_LOWER },	-- Gnomeregan
				["sourceQuest"] = 47850,	-- Step 6: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 7:|r This step requires visiting |cFFFFD700Gnomeregan|r. \n\nNote: Horde players can easily get to Gnomeregan by taking the zeppelin from Orgrimmar and using the teleporter at Grom'gol Base Camp. Players of either faction who have done the Gnomeregan pet battle dungeon can be teleported there directly by speaking to |cff006812Manapoof|r in Broken Isles Dalaran or their BfA capital city.\n\nOnce inside the instance, go straight and jump down into the |cFFFFD700Hall of Gears|r. From here, take the winding hallway towards the |cFFFFD700Launch Bay|r. About halfway between the |cFFFFD700Launch Bay|r and |cff863325Crowd-Pummeler 9-60|r, there will be a plaque on the wall called |cFFFFD700Instructions|r and a set of 10 |cFFFFD700Numerical Consoles|r. Click the Instructions. They read:\n\n|cFFFFFFFF0111011 00100 10010110 1010|r\n|cFFFFFFFF11110111 01100 01111111 01000|r\n|cFFFFFFFF01101011100101 1010010110 10111101|r\n|cFFFFFFFF11001 00111111 10010 01001001|r\n|cFFFFFFFF10000 011010010110100111010110|r\n|cFFFFFFFF01011011 11110 11110001 11111|r\n|cFFFFFFFF11100000 00010 11111111 01000|r\n|cFFFFFFFF10110111 10101 01111111 00001|r\n|cFFFFFFFF10101110 11111 00110000 01000|r\n|cFFFFFFFF101101010010101110010110|r\n\n|cFFFFFFFF180|r\n\n|cFFFFFFFF+1111111111|r\n\nSetting the consoles to |cFFFFFFFF1222176597|r will cause the fifth |cFFFFD700Inconspicuous Note|r to spawn.\n\n|cffcc33ffNote: You can use the following scripts as macros for 'up' and 'down,' respectively:|r\n|cffcc33ff/script SelectGossipOption(1)|r\n|cffcc33ff/script SelectGossipOption(2)|r\n\nClick it. The note reads...\n\n|cFFFFFFFFGames and toys are left behind.|r\n|cFFFFFFFFWhen you awaken screaming.|r\n",
			}),
			o(272181, {	-- Step 8: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47863,
				["coord"] = { 66.0, 36.5, VALSHARAH },
				["sourceQuest"] = 47852,	-- Step 7: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 8:|r This step requires visiting |cFFFFD700Val'sharah|r. Head to |cFFFFFFFF66.0, 36.5|r. Inside the house next to |cff863325Wraithtalon|r is a |cFFFFD700Nightmare Tumor|r. Click it to start the next puzzle.\n\n|cffcc33ffTips: Hit Alt+Z to hide your interface and then scroll into first-person view. You can also use the right mouse button to turn your character around for easier viewing.|r\n\nThis puzzle is similar to |cFFFFD700Blingtron's Circuit Design Tutorial|r or the ley line puzzles in |cFFFFD700Nazjatar|r.\n\nThe object of the puzzle is to untangle all of the lines so that none cross each other and turn blue. Once you complete it, another |cFFFFD700Inconspicuous Note|r will appear. Click it. The note reads...\r\r|cFFFFFFFFWhat you seek is buried within.|r\n",
			}),
			o(272220, {	-- Step 9: Inconspicuous Note
				["model"] = 1661948,
				["questID"] = 47881,
				["coord"] = { 53.4, 49.0, KUN_LAI_SUMMIT },
				["sourceQuest"] = 47863,	-- Step 8: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 9:|r This step requires visiting |cFFFFD700Kun-Lai Summit|r. Head to |cFFFFFFFF53.4, 49.0|r. This is the entrance to the |cFFFFD700Tomb of Secrets|r. At the very back of the tomb, there will be an |cFFFFD700Urn|r at the base of a tall Mogu statue. Click it.\r\r|cffcc33ffWARNING: You are about to consume the ashes of an evil sorcerer. There is no way to tell what will happen. Are you VERY sure you want to do this?|r\n\nYou will be teleported to the |cFFFFD700Endless Halls|r where you will have to figure a way out. \r\r1. (Optional) Download the addon |cFFFFFFFFLucid Nightmare Helper|r, which will help you with the endless maze by generating a map of the rooms as you go and letting you notate special things in each one.\n2. Each room in the Endless Halls is identical, but some doorways will be blocked by stones. \r3. Each room has an altar in the middle. The runes spawn on the altar and the orbs spawn on the torches to either side. \r4. Most rooms will have unlit torches and no rune. \r5. The goal is to find a colored orb and then take the orb to the corresponding rune. \r6. The colors are |cFFFFD700Red, Blue, Green, Yellow, and Purple|r. \r\r|cffcc33ffNotes:|r\n|cffcc33ff1. Do not try this close to server reset. It could easily take a couple of hours to complete.\n|cffcc33ff2.If you are struggling with the maze and want to reset it, you need to leave the area for one hour.|r\n\nOnce you match all the orbs and runes, walk through any doorway. In the next room, there will be another |cFFFFD700Inconspicuous Note|r on an altar. Click it. After you read it, turn around and walk up the stairs to exit the maze. The note reads...\n\n|cFFFFFFFFThe way is now open.|r\n|cFFFFFFFFTo the greatest secret never told.|r\n|cFFFFFFFFA fitting end to your journey.|r\n",
			}),
			o(272270, {	-- Step 10: Puzzler's Desire
				["model"] = 942865,
				["questID"] = 47885,
				["coord"] = { 39.8, 73.6, DEADWIND_PASS },
				["sourceQuest"] = 47881,	-- Step 9: Inconspicuous Note
				["description"] = "|cFFFFFFFFStep 10:|r This step requires visiting |cFFFFD700Deadwind Pass|r. Head to |cFFFFFFFF39.8, 73.6|r, the entrance to the Forgotten Crypt.\n\nOnce inside, head down the stairs into the |cFFFFD700Well of the Forgotten|r. Head into the |cFFFFD700Pauper's Walk|r hallway and follow it into the |cFFFFD700Forgotten Crypt.|r\n\nTake a right and then another right back into |cFFFFD700Pauper's Walk|r, then take a right at the Y and walk down the spiral, back into the |cFFFFD700Forgotten Crypt|r.\nTake a left and another left into the |cFFFFD700Tomb of the Unrepentant.|r\nOpen the gate and fall down the hole to the right (just drop down one level, not two). Walk into |cFFFFD700The Pit of Criminals|r, and |cFFFFD700Puzzler's Desire|r is on top of the bone pile.\n\n|cffcc33ffNote: If you are on the Warlock Affiction artifact quest and can't see the Puzzler's Desire, then you will have to abandon the quest to solve the phasing issue.\n\nCongratulations on your mount!|r\n\nWe would like to thank the |cFFFFD700Secret Finding Discord|r for solving yet another puzzle.\n",
				["groups"] = {
					i(151623),	-- Lucid Nightmare (MOUNT!)
				},
			}),
		},
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(VALSHARAH, {
			n(TREASURES, {
				q(47866),	-- triggered after step 8 of Lucid Nightmare secret
			}),
		}),
	}),
})));
