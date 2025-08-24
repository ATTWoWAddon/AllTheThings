---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
		--	n(193132),	-- Amethyzar the Glittering // under DF/Timed Based Rare
			n(187111, {	-- Ancient Hornswog
				["coord"] = { 77.6, 22.2, THE_WAKING_SHORES },
				["questID"] = 72835,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(187945, {	-- Anhydros the Tidetaker
				["coord"] = { 58.7, 40.3, THE_WAKING_SHORES },
				["questID"] = 73865,
			}),
		--	n(193135),	-- Azra's Prized Peony // under DF/Timed Based Rare
			n(193177, {	-- Beakers
				["questID"] = 73902,
				["coords"] = {
					{ 27.8, 78.8, THE_WAKING_SHORES },
					{ 30.2, 78.2, THE_WAKING_SHORES },
				},
			}),
			n(193198, {	-- Captain Lancer
				["coord"] = { 26.9, 76.1, THE_WAKING_SHORES },
				["questID"] = 73075,
				["groups"] = {
					bo(72127, true),
					i(200286),	-- Dragonbane Lance
				},
			}),
			n(187745, {	-- Disoriented Watcher
				["coord"] = { 67.8, 55.4, THE_WAKING_SHORES },
				["questID"] = 74092,
			}),
			n(191611, {	-- Dragonhunter Igordan
				["coord"] = { 64.3, 33.0, THE_WAKING_SHORES },
				["questID"] = 72838,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193217, {	-- Drakewing
				["description"] = "Spawns at the top right of the river & follows it all the way down to the Dragonscale Basecamp. Once there, he cycles back to his spawnpoint, again following the river. Coordinates roughly show his path.",
				["coords"] = {
					{ 73.6, 46.4, THE_WAKING_SHORES },
					{ 69.2, 59.6, THE_WAKING_SHORES },
					{ 54.0, 34.6, THE_WAKING_SHORES },
					{ 55.2, 59.2, THE_WAKING_SHORES },
					{ 47.2, 78.0, THE_WAKING_SHORES },
				},
				["questID"] = 73874,
				["groups"] = {
					i(200219),	-- Dangerous Drapery
				},
			}),
			n(193134, {	-- Enkine the Voracious
				["description"] = "Can only be summoned by fishing with the Lava Spices buff active at 22 65 in the Waking Shores. Lava Spices can be obtained by killing Restless Lava, Lavaslurpers and Basalt Shells along the lava river leading to the rare.",
				["coords"] = {
					{ 40.3, 64.9, THE_WAKING_SHORES },	-- The Rare
					{ 22.0, 64.9, THE_WAKING_SHORES },	-- Fishing Spot
				},
				["cost"] = {{"i",201092,1}},	-- Lava Spices
				["questID"] = 73072,
				["groups"] = {
					bo(72128, true),
					i(200167),	-- Regurgitated Stone Handaxe
				},
			}),
			n(195915, {	-- Firava the Rekindler
				["coord"] = { 56.9, 25.3, THE_WAKING_SHORES },
				["questID"] = 72839,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193154, {	-- Forgotten Gryphon
				["coord"] = { 33.1, 76.3, THE_WAKING_SHORES },
				["questID"] = 73073,
				["groups"] = {
					bo(72130, true),
					i(200858),	-- Plume of the Forgotten
				},
			}),
		--	n(193226),	-- Gorjo the Crab Shackler // under DF/Timed Based Rare
			n(196056, {	-- Gushgut the Beaksinker
				["coord"] = { 52.6, 58.6, THE_WAKING_SHORES },
				["questID"] = 73879,
			}),
		--	n(186200),	-- Harkyn Grymstone // under DF/Timed Based Rare
			n(193263, {	-- Helmet Missingway
				["coord"] = { 43.4, 73.6, THE_WAKING_SHORES },
				["questID"] = 73880,
			}),
			n(187209, {	-- Klozicc the Ascended
				["coord"] = { 54.7, 82.3, THE_WAKING_SHORES },
				["questID"] = 72841,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193266, {	-- Lepidoralia the Resplendent
				["description"] = "Talk to Collector Zik at the entrance to the cave and get a net. Start catching butterflies- no really, like, 200-400 butterflies. You'll be here a while.\n\nYou can talk to Collector Zik and select chat option 3: 'How many shimmerwings have you collected so far?' to get a hint toward your progress:\n0-33% I've only just started.\n34-66%We're making good progress.\n67-99%We're close to a discovery.",
				["coord"] = { 33.8, 85.8, THE_WAKING_SHORES },
				["questID"] = 74065,
				["groups"] = {
					bo(69891, true),
				},
			}),
		--	n(186827),	-- Magmaton // under DF/Timed Based Rare
		--	n(193152),	-- Massive Magmashell // under DF/Timed Based Rare
			n(190718, {	-- Monsoo, The Boiling Rage
				["coord"] = { 46.8, 57.3, THE_WAKING_SHORES },
				-- ["questID"] = ,
			}),
			n(193256, {	-- Nulltheria the Void Gazer
				["description"] = "At the top of the Tower. Nearby ghostly telescopes will indicate her spawn timer:\n\n2 telescopes means roughly 2h30min till respawn.\n\n3 telescopes indicate 2h respawn till respawn.\n\n4 telescopes indicate 1h till respawn.",
				["coord"] = { 56.00, 45.87, THE_WAKING_SHORES },
				["questID"] = 73888,
				["groups"] = {
					i(200236),	-- Memory of Nulltheria
				},
			}),
		--	n(193118),	-- O'nank Shorescour // under DF/Timed Based Rare
			n(184853, {	-- Primal Scythid Queen
				["coord"] = { 81.3, 37.7, THE_WAKING_SHORES },
				["questID"] = 72843,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(192737, {	-- Qalashi War Mammoth
				["description"] = "Marked with an icon on the map if they are up.",
				["coords"] = {
					{ 33.8, 70.4, THE_WAKING_SHORES },
					{ 39.2, 68.2, THE_WAKING_SHORES },
					{ 47.0, 73.0, THE_WAKING_SHORES },
					{ 48.4, 65.8, THE_WAKING_SHORES },
					{ 53.0, 66.4, THE_WAKING_SHORES },
				},
				["questID"] = 73890,
				["groups"] = {	-- He "drops" 4 rare npcs upon dieing, but they have no drops. CRS doesnt seem useful
					n(192738),	-- Brundin the Dragonbane
					n(192741),	-- Flamebreaker Grella
					n(192744),	-- Scalemelter Dorbane
					n(192743),	-- Stonefist Rejara
				},
			}),
			n(193271, {	-- Shadeslash Trakken
				["description"] = "Cave Entrance: 48.6, 74.3. Have to touch Focus, Globe and Telescope to spawn.",
				["coord"] = { 47.3, 73.9, THE_WAKING_SHORES },
				["questID"] = 74076,
				["groups"] = {
					bo(70719, true),
					i(200152),	-- Gleaming Blade of Insight
				},
			}),
			n(193181, {	-- Skewersnout <Raypier of the Deep>
				["description"] = "Swims between these 2 coordinates.",
				["coords"] = {
					{ 38.8, 41.6, THE_WAKING_SHORES },
					{ 48.6, 16.4, THE_WAKING_SHORES },
				},
				["questID"] = 73895,
				["groups"] = {
					i(200132),	-- Skewer's Snout
				},
			}),
			n(193175, {	-- Slurpo, the Incredible Snail
				["description"] = "Bring a Magical Salt Crystal from the Azure Span into the cave. If the pool is full of Unsalted Water Snails, use the Extra Action Button to summon the rare.",
				["coord"] = { 34.5, 89.7, THE_WAKING_SHORES },
				["questID"] = 74079,
				["cost"] = {{"i",201033,1}},	-- 1x Magical Salt Crystal
				["groups"] = {
					bo(72126, true),
					i(200189),	-- Hydroforged Shell Helm
				},
			}),
		--	n(193120),	-- Smogswog the Firebreather // under DF/Timed Based Rare
			n(193171, {	-- Terillod the Devout
				["coord"] = { 60.6, 82.9, THE_WAKING_SHORES },
				["questID"] = 72850,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193148, {	-- Thunderous Matriarch
				["coord"] = { 45.4, 35.6, THE_WAKING_SHORES },
				["questID"] = 73899,
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THE_WAKING_SHORES, {
			n(RARES, {
				q(74000),	-- Triggers when killing Harkyn Grymstone's group (Snee, Groth and Voll)
				q(74033),	-- Triggers when killing Harkyn Grymstone's group (Snee, Groth and Voll)
				q(74037),	-- Triggers when killing Harkyn Grymstone's group (Snee, Groth and Voll)
			}),
		}),
	}),
})));
