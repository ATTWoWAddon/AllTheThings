-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_5 } }, {
	header(HEADERS.Spell, 344577, {	-- Bound Shadehound
		["description"] = "Requires |cFF006812Appreciative|r reputation with Ve'nari and a total of 3,500 Stygia.\n\nEnable quest tracking to see all the steps.\n\nPurchase a |cFF0070ddStygia Dowser|r from Ve'nari for 1,500 Stygia.Throughout the secret, harvest every Stygia Nexus you find, as you will eventually need 200 |cFF1eff00Stygia Dust|r and |cFF1eff00Stygia Slivers|r.",
		["modelScale"] = 1.1,
		["displayID"] = 92632,
		["maps"] = { THE_MAW },
		["cost"] = {{ "i", 184870, 1 }},	-- 1x Stygia Dowser
		["g"] = {
			prof(STYGIA_CRAFTING, sharedData({ ["u"] = TRAINING }, {
				r(350276),	-- Armored Husk
				r(350399),	-- Stygia Bar
			})),
			i(185618),	-- Stygia Dust
			i(185617),	-- Stygia Sliver
			n(177073, {	-- Runed Chest
				["description"] = "Click the first grapple point at |cFFFFFFFF23.1, 68.3|r and the next grapple point at |cFFFFFFFF23.7, 75.3|r.\n\nUse your |cFF0070ddStygia Dowser|r when you are on the platform covered with green fog, and you will be transformed into a spirit.\n\nEach of the spikes on the platform is topped with a glowing rune.  To open the chest, match the runes in the puzzle to the positioning of the runes atop the spikes.  With your back to the grapple point, start with the rune to your left and continue, moving clockwise.\n\n|cffde1c1cIf you match the runes incorrectly, you will die and get a debuff that prevents you from trying the puzzle again for 2 hours.|r",
				["questID"] = 63611,
				["coords"] = {
					{ 23.1, 68.3, THE_MAW },	-- First Grapple Point
					{ 23.7, 75.3, THE_MAW },	-- Second Grapple Point
				},
				["g"] = {
					i(185056),	-- Crumbling Stele
				},
			}),
			i(185353, {	-- Rune Codex Page: Binding (CI!)
				["description"] = "Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe coordinates are to the teleport pad that takes you to Dartanos's platform, and the page is all the way at the back on a table, behind where the rare spawns.",
				["sourceQuests"] = { 63611 },	-- Runed Chest
				["coords"] = {
					{ 24.6, 12.5, THE_MAW },
					{ 27.6, 17.3, THE_MAW },
				},
				["cost"] = { { "i", 185350, 1 } },	-- Partial Rune Codex
			}),
			i(185351, {	-- Rune Codex Page: Forging (CI!)
				["description"] = "Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe coordinates are to a cave entrance, and the page is at the back of the cave on the left side.",
				["sourceQuests"] = { 63611 },	-- Runed Chest
				["coord"] = { 48.8, 84.7, THE_MAW },
				["cost"] = { { "i", 185350, 1 } },	-- Partial Rune Codex
			}),
			i(185352, {	-- Rune Codex Page: Souls (CI!)
				["description"] = "Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe page is on the right side of Thanassos' platform.",
				["sourceQuests"] = { 63611 },	-- Runed Chest
				["coord"] = { 27.2, 72.3, THE_MAW },
				["cost"] = { { "i", 185350, 1 } },	-- Partial Rune Codex
			}),
			i(185632, {	-- Intact Rune Codex (CI!)
				["description"] = "Received after collecting and using all the Rune Codex Pages.",
				["sourceQuests"] = {
					63643,	-- Rune Codex Page: Binding
					63641,	-- Rune Codex Page: Forging
					63642,	-- Rune Codex Page: Souls
				},
			}),
			i(185473, {	-- Soulforger's Tools (CI!)
				["description"] = "Used for the |cFFb19cd9Bound Shadehound|r secret mount. Only available to characters who have collected the |cFFa335eeIntact Rune Codex|r.",
				["sourceQuests"] = { 63668 },	-- Intact Rune Codex
				["crs"] = { 166398 },	-- Soulforger Rhovus
			}),
			n(177392, {	-- Soulsteel Anvil
				["description"] = "Once you have the |cFFa335eeIntact Rune Codex|r, you can collect |cFFa335eeSoulforger's Tools|r from the rare mob Soulforger Rhovus and finish collecting all your |cFF1eff00Stygia Dust|r and |cFF1eff00Stygia Slivers|r (200 of each).\n\nGrapple all the way up to the Soulsteel Anvil — the first grapple point is at |cFFFFFFFF23.0, 68.4|r, and the anvil is at |cFFFFFFFF20.2, 67.0|r.\n\nCraft 20 |cFF0070ddStygia Bar|r and 1 |cFFa335eeArmored Husk|r.",
				["sourceQuests"] = { 63667 },	-- Soulforger's Tools
				["coords"] = {
					{ 23.0, 68.4, THE_MAW },	-- grapple point
					{ 20.2, 67.0, THE_MAW },	-- Soulsteel Anvil
				},
				["questID"] = 63707,
				["cost"] = { { "i", 185474, 1 }, },		-- Armored Husk
				["g"] = {
					i(185630, {	-- Stygia Bar
						["cost"] = {
							{ "i", 185618, 10 },	-- 10x Stygia Dust
							{ "i", 185617, 10 },	-- 10x Stygia Sliver
						},
					}),
					i(185474, {	-- Armored Husk
						["cost"] = {
							{ "i", 185473, 1 },		-- Soulforger's Tools
							{ "i", 185630, 20 },	-- 20x Stygia Bar
						},
					}),
				},
			}),
			n(177195, {	-- Stray Soul
				["description"] = "Find a Stray Soul patting along Gorgoa, the River of Souls.  Interact with it, and you will receive a |cFFa335eeWilling Wolf Soul|r.\n\nThe coordinates are near the beginning of the soul's path, where it respawns, but if no one interacts with the soul it can pat all the way to |cFFFFFFFF49.8, 16.4|r.",
				["sourceQuests"] = { 63707 },	-- Soulsteel Anvil
				["coord"] = { 23.2, 46.8, THE_MAW },	-- Beginning of the Path
				["questID"] = 63666,
				["g"] = {
					i(185471),	-- Willing Wolf Soul
				},
			}),
			i(185475, {	-- Feral Shadehound
				["sourceQuests"] = { 63666 },
				["cost"] = {
					{ "i", 185474, 1 },	-- 1x Armored Husk
					{ "i", 185471, 1 },	-- 1x Willing Wolf Soul
				},
			}),
			q(63684, {	-- Feral Shadehound
				["description"] = "Once you have the |cFFa335eeArmored Husk|r and the |cFFa335eeWilling Wolf Soul|r, click on the Binding Altar at |cFFFFFFFF45.2, 48.3|r.\n\n|cffde1c1cAs soon as you summon the mount, it will start running, so make sure you're facing towards the interior of the zone and that you won't run off the edge and into the void!|r\n\nOnce you're mounted, your hotkeys will be replaced with runes.  Use them in the order provided by your |cFFa335eeCrumbling Stele|r, and you will receive the mount!",
				["provider"] = { "i", 185475 },	-- Feral Shadehound
				["g"] = {
					i(184168),	-- Bound Shadehound (MOUNT!)
					i(185616),	-- Summon Feral Shadehound (QI!)
				},
			}),
		},
	}),
})));