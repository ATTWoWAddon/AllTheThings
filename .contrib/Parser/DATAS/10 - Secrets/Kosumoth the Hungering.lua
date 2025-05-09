-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	n(111573, {	-- Kosumoth the Hungering
		["description"] = "***Quest tracking enabled is required to see all the steps.***\n\nThis will show you how to unlock |cFFFFD700Kosumoth the Hungering|r, which has a world quest that awards the |cFFFFD700Hungering Claw|r pet or the |cFFFFD700Fathom Dweller|r mount.",
		["g"] = {
			n(102695, {	-- Drak'thul
				["questID"] = 43715,	-- Step 1: Drak'thul
				["coord"] = { 37.2, 71.8, BROKEN_SHORE },
				["description"] = "|cFFFFFFFFStep 1:|r Head to |cFFFFFFFF37.2, 71.8|r. Speak with |cFFFFD700Drak'thul|r and choose option 1. \n\n|cffcc33ffThe demons are taking over this island, you may want to leave.|r \n\nChoose option 1 again. \n\n|cffcc33ffYou must know much. Will you help us defeat them?|r \n\nHe tells you to go away.",
			}),
			o(252412, {	-- Step 2: Mound of Dirt
				["model"] = 658558,
				["modelScale"] = .5,
				["questID"] = 43729,
				["coords"] = {
					{ 58.5, 54.0, BROKEN_SHORE },
					{ 57.4, 55.9, BROKEN_SHORE },
				},
				["sourceQuest"] = 43715,	-- Step 1: Drak'thul
				["description"] = "|cFFFFFFFFStep :2|r Head to the |cFFFFD700Feldust Cavern|r at |cFFFFFFFF58.56, 53.99|r.  Walk inside to |cFFFFFFFF57.45, 55.95|r and click the |cFFFFD700Mound of Dirt|r to loot the |cFFFFD700Weathered Relic|r\n\nHead back to |cFFFFFFFF37.17, 71.82|r. Speak with |cFFFFD700Drak'thul|r and choose option 1. \n\n|cffcc33ffDo you recognize this relic?|r \n\nSpeak to him again and choose option 1. \n\n|cffcc33ffTell me of these whispers.|r\n\nSpeak to him again and choose option 1.\n\n|cffcc33ffDrak'thul?|r.\n\nSpeak to him again and choose option 1. \n\n|cffcc33ffYou are yourself again. What happened?|r \n\nSpeak to him again and he will tell you to go away",
			}),
			o(252557, {	-- Step 3: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43730,
				["coord"] = { 37.9, 37.4, AZSUNA },
				["sourceQuest"] = 43729,	-- Step 2: Mound of Dirt
				["description"] = "|cFFFFFFFFStep 3:|r This step will send you to |cFFFFD700Azsuna|r.  Head to |cFFFFFFFF37.96, 37.41|r, walk down into the cave and click on the purple |cFFFFD700Hungering Orb|r in the fountain.",
			}),
			o(252558, {	-- Step 4: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43731,
				["coord"] = { 32.9, 75.9, STORMHEIM },
				["sourceQuest"] = 43730,	-- Step 3: Hungering Orb
				["description"] = "|cFFFFFFFFStep 4:|r This step will send you to |cFFFFD700Stormheim|r.  Head to |cFFFFFFFF32.92, 75.90|r, walk into the cave and make sure to avoid the |cFFFFD700Kangaxx|r.  Click on the |cFFFFD700Hungering Orb|r at the back of the cave in the sack of scrolls.",
			}),
			o(252559, {	-- Step 5: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43732,
				["coord"] = { 41.5, 81.1, VALSHARAH },
				["sourceQuest"] = 43731,	-- Step 4: Hungering Orb
				["description"] = "|cFFFFFFFFStep 5:|r This step will send you to Val'sharah|r.  Head to |cFFFFFFFF41.51, 84.18|r, walk into the cave and take a left to see a table with a note on it.  Turn left and walk over the rocks, turn back right and kill the |cFFFFD700Arcane Servitor|r.  Click the |cFFFFD700Hungering Orb|r sitting on the ground between two sleeping pads.",
			}),
			o(252560, {	-- Step 6: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43733,
				["coord"] = { 29.2, 78.5, BROKEN_SHORE },
				["sourceQuest"] = 43732,	-- Step 5: Hungering Orb
				["description"] = "|cFFFFFFFFStep 6:|r This step will send you to |cFFFFD700The Great Sea|r near |cFFFFD700Broken Shore|r.  Head to |cFFFFFFFF29.16, 78.57|r, swim down and the cave is under the rock ledge.  Walk forward avoiding the steam explosions and click on the |cFFFFD700Hungering Orb|r sitting under a leanto in some leaves.\n\n|cffcc33ffNote: Be careful not to die to fatigue, fatigue will stop once in the cave.|r",
			}),
			o(252561, {	-- Step 7: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43734,
				["coord"] = { 59.3, 13.1, AZSUNA },
				["sourceQuest"] = 43733,	-- Step 6: Hungering Orb
				["description"] = "|cFFFFFFFFStep 7:|r This step will send you to |cFFFFD700Azsuna|r.  Head to |cFFFFFFFF59.37, 13.13|r, walk down into the cave and click on the |cFFFFD700Hungering Orb|r that is wrapped in stone beside a broken table.",
			}),
			o(252562, {	-- Step 8: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43735,
				["coord"] = { 67.3, 14.7, BROKEN_ISLES },
				["sourceQuest"] = 43734,	-- Step 7: Hungering Orb
				["description"] = "|cFFFFFFFFStep 8:|r This step will send you to |cFFFFD700The Great Sea|r near |cFFFFD700Stormheim|r.  Head to the |cFFFFD700Shield's Rest|r flight point.  Fly northwest until you see a broken statue with a large axe in the water named |cFFFFD700Sotnar's Rest|r.  Swim down where the hand comes out of the water between the 2 jutting  stones and you should see a |cFFFFD700Toothless Great White|r.  Swim down beneath the shark and turn into the opening then swim up into the cave.  Avoid the steam explosions and click on the |cFFFFD700Hungering Orb|r.",
			}),
			o(252563, {	-- Step 9: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43736,
				["coord"] = { 55.8, 38.4, HIGHMOUNTAIN },
				["sourceQuest"] = 43735,	-- Step 8: Hungering Orb
				["description"] = "|cFFFFFFFFStep 9:|r This step will send you to |cFFFFD700Highmountain|r.  Head to |cFFFFFFFF55.84, 38.47|r.  This cave is to the right of the main cave here through the bushes.  Click on the |cFFFFD700Hungering Orb|r that is under the dead animal skull on the ground.",
			}),
			o(252564, {	-- Step 10: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43737,
				["coord"] = { 54.0, 26.1, AZSUNA },
				["sourceQuest"] = 43736,	-- Step 9: Hungering Orb
				["description"] = "|cFFFFFFFFStep 10:|r This step will send you to |cFFFFD700Azsuna|r.  Head to |cFFFFFFFF54.02, 26.18|r, walk down into the cave and click the |cFFFFD700Hungering Orb|r that is under the plant next to the second pillar.",
			}),
			o(252565, {	-- Step 11: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43760,
				["coord"] = { 79.5, 89.3, EYE_OF_AZSHARA },
				["sourceQuest"] = 43737,	-- Step 10: Hungering Orb
				["description"] = "|cFFFFFFFFStep 11:|r This step will send you to |cFFFFD700Eye of Azshara|r, the zone.  Head to |cFFFFFFFF79.52, 89.31|r.  Swim down to find a wrecked ship, you can swim into the ship between the anchor and the rock throught the seaweed.  Swim up and to the platform above and through the hole on right side.  Now swim through the seaweed hole on left and down.  Turn around and swim under the beam then through the seaweed to the left.  Click the  |cFFFFD700Hungering Orb|r that is on the right side in the water.",
			}),
			o(252434, {	-- Step 12: Hungering Orb
				["model"] = 249664,
				["modelScale"] = 2,
				["questID"] = 43761,
				["coord"] = { 37.1, 71.8, BROKEN_SHORE },
				["sourceQuest"] = 43760,	-- Step 11: Hungering Orb
				["description"] = "|cFFFFFFFFStep 12:|r This step will send you to |cFFFFD700Broken Shore|r.  Head to |cFFFFFFFF37.17, 71.82|r.  Click the |cFFFFD700Hungering Orb|r that is on the stone table near |cFFFFD700Drak'Thul|r",
			}),
		},
	}),
});


root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			q(43725),	-- Flag 2 triggers on repeated dialogue from Drak'thul during Step 2.
			q(43727),	-- Flag 3 triggers on repeated dialogue from Drak'thul during Step 2.
			q(43728),	-- Flag 4 triggers on repeated dialogue from Drak'thul during Step 2.
		}),
	}),
})));