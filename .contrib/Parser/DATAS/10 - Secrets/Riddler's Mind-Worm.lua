-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	header(HEADERS.Spell, 243025, {	-- Riddler's Mind-Worm
		["description"] = "***'Show All Trackable Things' is required to see all the steps.***\n\nBelow is a detailed explanation on how to obtain the Riddler's Mind-Worm mount.\r\rNote: Progress on this will be reset each week, so do make sure to complete it in one reset.",
		["modelScale"] = .7,
		["displayID"] = 74314,
		["groups"] = {
			o(148502, {	-- Step 1: Page 9
				["model"] = 305393,
				["questID"] = 45470,
				["coord"] = { 48.8, 42.1, LEGION_DALARAN },
				["description"] = "|cFFFFFFFFStep 1:|r We will begin in |cFFFFD700Dalaran|r. Head to the |cFFFFD700Legerdemain Lounge|r at |cFFFFFFFF48.80, 42.10|r. |cFFFFD700Page 9|r will be on the third shelf of the bookcase. Click this to continue. The page reads...\n\n|cFFFFFFFF...of sea, spirit and self...|r",
				-- ["isWeekly"] = true,	-- This has been saved for quite a while... don't think it's weekly
			}),
			o(209270, {	-- Step 2: Page 78
				["model"] = 305393,
				["questID"] = 47207,
				["coord"] = { 49.2, 34.0, DUSKWOOD },
				["sourceQuest"] = 45470,	-- Step 1: Page 9
				["description"] = "|cFFFFFFFFStep 2:|r This step will take us to |cFFFFD700Duskwood|r. Head to |cFFFFFFFF49.25, 34.01|r. |cFFFFD700Page 78|r is found on the table beside the moonwell. Click this to continue. The page reads...\n\n|cFFFFFFFF...first of the lords to fall...|r",
				["isWeekly"] = true,
			}),
			o(245216, {	-- Step 3: Page 161
				["model"] = 305393,
				["questID"] = 47208,
				["coord"] = { 47.3, 78.1, MOUNT_HYJAL },	-- Firelands
				["sourceQuest"] = 47207,	-- Step 2: Page 78
				["description"] = "|cFFFFFFFFStep 3:|r This step will take us to |cFFFFD700Firelands|r. |cFFFFD700Page 161|r will be found on the left rear side of the |cFFFFD700Ragnaros|r platform. Click this to continue. The page reads...\n\n|cFFFFFFFF...the wind, the eye...|r",
				["isWeekly"] = true,
			}),
			o(251564, {	-- Step 4: Page 655
				["model"] = 305393,
				["questID"] = 47209,
				["coord"] = { 70.4, 78.1, ULDUM },
				["sourceQuest"] = 47208,	-- Step 3: Page 161
				["description"] = "|cFFFFFFFFStep 4:|r This step will take us to |cFFFFD700Uldum|r. Head to |cFFFFFFFF70.44, 78.11|r. |cFFFFD700Page 655|r will be between the two small trees. Click this to continue. The page reads...\n\n|cFFFFFFFF...the plume, the tomb, a scarab moon...|r",
				["isWeekly"] = true,
			}),
			o(220821, {	-- Step 5: Page 845
				["model"] = 305393,
				["questID"] = 47210,
				["coord"] = { 72.4, 44.3, VALE_OF_ETERNAL_BLOSSOMS },	-- Siege of Orgrimmar
				["sourceQuest"] = 47209,	-- Step 4: Page 655
				["description"] = "|cFFFFFFFFStep 5:|r This step will take us to |cFFFFD700Siege of Orgrimmar|r. This does not spawn on LFR. Head to the |cFFFFD700Sha of Pride|r room. |cFFFFD700Page 845|r is found in the far back left corner of the room (southwest on the minimap). Click this to continue. The page reads...\n\n|cFFFFFFFF...in snow, sand, and stone...|r",
				["isWeekly"] = true,
			}),
			o(220820, {	-- Step 6: Page 1127
				["model"] = 305393,
				["questID"] = 47211,
				["coords"] = {
					{ 22.9, 64.4, CAVERNS_OF_TIME },	-- Well of Eternity Entrance
					{ 64.7, 49.9, TANARIS },	-- Caverns of Time Entrance
				},
				["sourceQuest"] = 47210,	-- Step 5: Page 845
				["description"] = "|cFFFFFFFFStep 6:|r This step will take us to the |cFFFFD700Well of Eternity|r instance in |cFFFFD700Caverns of Time|r. Kill the first 2 bosses. Take the drake and when you are dropped off walk to the left to the stone stairs. |cFFFFD700Page 1127|r will be on the bottom stair next to a large stone divider. Click this to continue. The page reads...\n\n|cFFFFFFFF...behold the battle, unblinking...|r",
				["isWeekly"] = true,
			}),
			o(19023, {	-- Step 7: Page 2351
				["model"] = 305393,
				["questID"] = 47212,
				["coord"] = { 34.6, 50.9, KUN_LAI_SUMMIT },
				["sourceQuest"] = 47211,	-- Step 6: Page 1127
				["description"] = "|cFFFFFFFFStep 7:|r This step will take us to |cFFFFD700Kun-Lai Summit|r near the |cFFFFD700Shado-Pan Monastery|r. Head to |cFFFFFFFF34.61, 50.88|r. |cFFFFD700Page 2351|r will be between the statue's paws on the platform. Click this to continue. The page reads...\n\n|cFFFFFFFF...bejeweled watcher...|r",
				["isWeekly"] = true,
			}),
			o(244678, {	-- Step 8: Page 5555
				["model"] = 305393,
				["questID"] = 47213,
				["coord"] = { 76.4, 53.6, ULDUM },
				["sourceQuest"] = 47212,	-- Step 7: Page 2351
				["description"] = "|cFFFFFFFFStep 8:|r This step will take us to |cFFFFD700Uldum|r. Head to |cFFFFFFFF76.45, 53.67|r. |cFFFFD700Page 5555|r will be on the platform slightly offcenter in front of the left foot of the statue. Click this to continue. The page reads...\n\n|cFFFFFFFF...ray of sunshine...|r",
				["isWeekly"] = true,
			}),
			o(269830, {	-- Step 9: Gift of the Mind-Seekers
				["model"] = 942865,
				["questID"] = 47214,
				["coord"] = { 30.5, 27.5, WESTFALL },
				["sourceQuest"] = 47213,	-- Step 8: Page 5555
				["description"] = "|cFFFFFFFFStep 9:|r This step will take us to |cFFFFD700Westfall|r. Head to |cFFFFFFFF30.53, 27.56|r. |cFFFFD700Gift of the Mind-Seekers|r will be on the ground here in a broken boat. Click this to obtain your mount. Congratulations on getting the |cFFFFD700Riddler's Mind-Worm|r.\n\nWe would like to thank the |cFFFFD700Secret Finding Discord|r again for solving this puzzle.",
				["isWeekly"] = true,
				["groups"] = {
					i(147835),	-- Riddler's Mind Worm (MOUNT!)
				},
			}),
		},
	}),
});
