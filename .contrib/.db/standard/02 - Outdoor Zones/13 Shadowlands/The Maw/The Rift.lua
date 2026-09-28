---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(THE_MAW, {
		header(HEADERS.Spell, 354778, {	-- The Rift
			["description"] = "The things in this section are only accessible when you are in The Rift, a version of the Maw populated by shades.\n\nThis phase can be accessed by using a |cFF1eff00Repaired Riftkey|r on a |cFFFFFFFFMaw Rift|r in Korthia or by using a |cFF0070ddCollapsing Riftstone|r.",
			["cost"] = {
				{ "i", 186969, 1 },	-- Collapsing Riftstone
				{ "i", 186731, 1 },	-- Repaired Riftkey
			},
			["groups"] = {
				n(QUESTS, {
					q(64282, {	-- Full of Surprises
						["provider"] = { "n", 179904 },	-- Ve'nari
						["coord"] = { 44.7, 51.4, THE_MAW },
						["isDaily"] = true,
					}),
				}),
				n(RARES, sharedData({ ["isDaily"] = true }, {
					n(179853, {	-- Blinding Shadow
						["coord"] = { 34.7, 41.9, THE_MAW },
						["questID"] = 64276,
						["groups"] = {
							i(187406),	-- Band of Blinding Shadows
							i(187361),	-- Rift-Bound Shadow Piercer
						},
					}),
					n(179851, {	-- Guard Orguluus
						["description"] = "Patrols in a circle around a large rock formation in the Beastwarrens.",
						["coord"] = { 51.1, 71.1, THE_MAW },
						["questID"] = 64272,
						["groups"] = {
							i(187398),	-- Chestguard of the Shadeguard
							i(187363),	-- Orguluus' Spear
						},
					}),
					n(179735, {	-- Torglluun
						["coord"] = { 28.5, 24.9, THE_MAW },
						["questID"] = 64232,
						["groups"] = {
							i(187139),	-- Bottled Shade Heart (TOY!)
							i(187389),	-- Lord of Shade's Binders
							i(187360),	-- Orb of Enveloping Rifts
							i(186605),	-- Nilganihmaht's Runed Band
						},
					}),
				})),
				n(SPECIAL, {
					n(179572, {	-- Hand of Nilganihmaht
						["description"] = "At the back of the cave. Collect 5 rings from throughout the Maw and place them on the Hand to receive the mount.\n\nThe 4 pieces that make up the Stone Ring require the Necrolord Assault; 2 pieces additionally require the quest |cFF349cffPutting a Plan Together|r. The Hand of Nilganihmaht and the Runed Band are both in the Rift, which requires either the Night Fae Covenant Assault quest |cFF349cffA Shady Place|r or the use of a |cFF1eff00Repaired Riftkey|r in Korthia.\n\nThe other 3 rings can be collected at any time in the normal phase of the Maw.",
						["coord"] = { 25.6, 32.0, THE_MAW },
						["groups"] = {
							q(64197, {	-- Placing Stone Ring
								["name"] = "Placing Stone Ring",
								["cost"] = { { "i", 186603, 1 } },	-- Nilganihmaht's Stone Ring (combine 4 green Quartered Rings)
								["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
							}),
							q(64198, {	-- Placing Runed Band
								["name"] = "Placing Runed Band",
								["cost"] = { { "i", 186605, 1 } },	-- Nilganihmaht's Runed Band
								["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
							}),
							q(64199, {	-- Placing Gold Band
								["name"] = "Placing Gold Band",
								["cost"] = { { "i", 186608, 1 } },	-- Nilganihmaht's Gold Band
								-- no lock criteria, it's apparently able to be done again after learning the mount (@Rustedchurl 2022-04-24)
							}),
							q(64200, {	-- Placing Silver Ring
								["name"] = "Placing Silver Ring",
								["cost"] = { { "i", 186607, 1 } },	-- Nilganihmaht's Silver Ring
								["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
							}),
							q(64201, {	-- Placing Signet Ring
								["name"] = "Placing Signet Ring",
								["cost"] = { { "i", 186606, 1 } },	-- Nilganihmaht's Signet Ring
								["lockCriteria"] = { 1, "spellID", 354354 },	-- Learning Hand of Nilganihmaht prevents being able to do the quests again
							}),
							q(64202, {	-- Gotta Hand It To Ya
								["sourceQuests"] = {
									64197,	-- Placing Stone Ring
									64198,	-- Placing Runed Band
									64199,	-- Placing Gold Band
									64200,	-- Placing Silver Ring
									64201,	-- Placing Signet Ring
								},
								["groups"] = {
									i(186713),	-- Hand of Nilganihmaht (MOUNT!)
								},
							}),
						},
					}),
					n(179883, {	-- Zovaal's Vault
						["description"] = "Part of the Ve'nari daily quest |cFF349cffFull of Surprises|r. The chest shows up on the main map and minimap when you are close to it. Turn it in to Ve'nari at |cFFFFFFFF44.7, 51.4.|r\n\nIf you return the chest to Ve'nari before picking up the daily quest, you cannot turn the quest in.",
						["coords"] = {
							{ 33.0, 66.3, THE_MAW },
							{ 47.2, 79.6, THE_MAW },
							{ 66.4, 58.2, THE_MAW },
							{ 62.2, 64.2, THE_MAW },
						},
						["groups"] = {
							o(369262, {	-- Zovaal's Vault
								["coord"] = { 44.6, 51.5, THE_MAW },
								["questID"] = 64283,
								["isDaily"] = true,
								["groups"] = {
									i(187416),	-- Jailer's Cage (TOY!)
									i(187113),	-- Personal Ball and Chain (TOY!)
									i(187251),	-- Shaded Skull Shoulderguards
									i(186969),	-- Collapsing Riftstone
								},
							}),
						},
					}),
				}),
				n(TREASURES, {
					-- TODO: Stolen Anima Vessels are tied to their Covenant it seems?, move them to respective Covenants as checked
					o(369235, {	-- Stolen Anima Vessel
						-- Both Night Fae / Kyrian Assaults? Any?
						["questID"] = 64269,
						["isWeekly"] = true,
						["coords"] = {
							{ 32.4, 43.1, THE_MAW },
							{ 35.7, 46.4, THE_MAW },
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(187174),	-- Shaded Judgment Stone (TOY!)
				}),
			},
		}),
	}),
})));
