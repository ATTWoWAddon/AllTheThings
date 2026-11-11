-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
local DAWN_WAKER = createHeader({
	readable = "The Dawn Waker",
	icon = 7789512,	-- Eluvi'ana
	text = {
		en = "The Dawn Waker",
	},
	description = {
		en = "A secret chain that starts with the Ancient Heirloom on Zephras Isle and leads across Kalimdor to cleanse a befouled water globe. The community hasn't found its end yet, so the last steps may change.",
	},
});
root(ROOTS.Secrets, {
	n(DAWN_WAKER, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			o(676051, {	-- Ancient Heirloom
				description = "Step 1: Skyborne get the Ancient Heirloom from Coming of Age (92460). Everyone else can loot it here, on the top floor of the building.",
				coord = { 41.7, 23.4, MAP.ZEPHRAS_ISLE },
				groups = {
					i(264908),	-- Ancient Heirloom
				},
			}),
			o(676059, {	-- Ancient Hilt
				description = "Step 2: Use a Night Watchman's Torch in the Ruins of Ban'aethal to uncover the Ancient Hilt, which starts The Ancient Hilt (93161).",
				coord = { 58.1, 24.1, MAP.ZEPHRAS_ISLE },
				cost = { { "i", 280612, 1 } },	-- Night Watchman's Torch
				groups = {
					i(272313),	-- Ancient Hilt
				},
			}),
			n(259012, {	-- Ealaane Nimbuswalker <Ban'aethal Refugee>
				description = "Step 3: Bring the Ancient Hilt to Ealaane, then find the Ancient Skyborne Blade (it moves between several spots on the island) and bring it back for Eluvi'ana.",
				coord = { 65.8, 74.4, MAP.ZEPHRAS_ISLE },
				groups = {
					i(264501),	-- Ancient Skyborne Blade
					i(276188),	-- Eluvi'ana
				},
			}),
			i(279275, {	-- Clouded Water Globe
				description = "Step 4 (Alliance): Combine 20 Mathystral Amulet Fragments from the naga in the Ruins of Mathystra, use the amulet to summon Baron Marinous, and loot the globe. Hand it to Onu in the Grove of the Ancients, then talk to him again to get it back.",
				coord = { 59.0, 22.9, MAP.DARKSHORE },
				cr = 270294,	-- Baron Marinous
			}),
			i(16782, {	-- Strange Water Globe
				description = "Step 4 (Horde): Loot the globe from Baron Aquanis in Blackfathom Deeps. Hand it to Je'neu at Zoram'gar Outpost, then talk to him again to get it back.",
				cr = 12876,	-- Baron Aquanis
			}),
			n(273642, {	-- Highborne Spirit
				description = "Step 5: Wear the Ancient Heirloom and carry your water globe to Zoram Strand, where the Highborne Spirit appears. It sends you to the Tower of Althalaxx.",
				coord = { 15.6, 19.2, MAP.ASHENVALE },
			}),
			n(3660, {	-- Athrikus Narassin
				description = "Step 6: Kill Narassin at the top of the Tower of Althalaxx for the Azsharan Key, then open the strongbox behind him for Narassin's Tome. Return to the Highborne Spirit afterwards.",
				coord = { 56.4, 26.5, MAP.DARKSHORE },
				groups = {
					i(282406),	-- Azsharan Key
				},
			}),
			o(676349, {	-- Narassin's Strongbox
				coord = { 56.2, 26.4, MAP.DARKSHORE },
				cost = { { "i", 282406, 1 } },	-- Azsharan Key
				groups = {
					i(282404),	-- Narassin's Tome
				},
			}),
			n(253471, {	-- Mordent Evenshade
				description = "Step 7: Bring the Ancient Hilt, Eluvi'ana and Narassin's Tome to Mordent Evenshade. He names three items that can cleanse the globe: the Star of Elune, an Abyssal Mote and the Tears of Anguish.",
				coord = { 35.0, 46.5, MAP.SHENDRALAS },
			}),
			i(282548, {	-- Star of Elune
				description = "Step 8: The Shen'dralar Vault on the ground floor of the ogre temple in southern Feralas, and the four Ancient Switches around it, only appear while you wear the Ancient Heirloom. Four players must throw the switches at the same time so a fifth can open the vault.",
				coord = { 58.5, 71.6, MAP.FERALAS },
				-- TODO: object IDs of the Shen'dralar Vault and the Ancient Switches.
			}),
			i(282547, {	-- Abyssal Mote
				description = "Step 8: Loot it from the underwater Abyssal Chest in Azshara. You must have finished the chain that starts with Kirith and ends with Azsharite first.",
				sourceQuest = 3602,	-- Azsharite
				coord = { 66.0, 54.1, MAP.AZSHARA },
				-- TODO: object ID of the Abyssal Chest.
			}),
			i(282431, {	-- Tears of Anguish
				description = "Step 8: Drops from the Highborne ghosts at Lake Kel'theril after you've spoken with Mordent Evenshade. The drop isn't guaranteed.",
				coord = { 53.6, 43.2, MAP.WINTERSPRING },
				crs = {
					7524,	-- Anguished Highborne
					7523,	-- Suffering Highborne
				},
			}),
			o(677445, {	-- Shrine of Coalescence
				description = "Step 9: Bring the three items and your water globe to the shrine, then use the globe from your bags to cleanse it. Show the Cleansed Water Globe to Mordent Evenshade, who sends you to Prince Tortheldrin in Dire Maul.",
				coord = { 72.7, 37.2, MAP.MOUNT_HYJAL },
				groups = {
					i(282699),	-- Cleansed Water Globe
				},
			}),
			n(11486, {	-- Prince Tortheldrin
				description = "Step 10: Prince Tortheldrin speaks of two blades, Eluvi'ana and Eluvi'tor, and says only those Honored in his Court may learn more. The next step likely needs Honored with the Shen'dralar; the chain is still being solved.",
				maps = { MAP.DIRE_MAUL_COURT_OF_THE_HIGHBORNE },
			}),
		},
	}),
});
