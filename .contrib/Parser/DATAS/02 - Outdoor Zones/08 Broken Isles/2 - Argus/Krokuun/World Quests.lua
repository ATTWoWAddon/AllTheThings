---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(WORLD_QUESTS, sharedData({
					["isWorldQuest"] = true,
				},{
					q(48285),	-- Aerial Superiority
					petbattle(q(49043)),	-- Baneglow
					q(47724),	-- Besieged
					q(47496),	-- Bunker Buster
					q(47624, {	-- Bury It
						["groups"] = {
							o(271114, {	-- Eredar Bones
								i(151061),	-- Chewed Eredar Bones (QI!)
							}),
						},
					}),
					q(48511, {	-- Commander Endaxis
						["sym"] = {{"select","npcID",124775}},	-- Select the WQ NPC
					}),
					q(48509, {	-- Commander Sathrenael
						["sym"] = {{"select","npcID",122912}},	-- Select the WQ NPC
					}),
					q(48510, {	-- Commander Vecaya
						["sym"] = {{"select","npcID",122911}},	-- Select the WQ NPC
					}),
					q(48286, {	-- Crystal Methods
						o(273839, {	-- Argunite Fragments
							["coords"] = {
								{ 33.1, 71.5, KROKUUN },
								{ 34.1, 69.1, KROKUUN },
								{ 34.2, 72.7, KROKUUN },
								{ 34.3, 67.4, KROKUUN },
								{ 34.3, 71.4, KROKUUN },
								{ 35.0, 69.9, KROKUUN },
								{ 35.3, 68.4, KROKUUN },
								{ 35.7, 67.4, KROKUUN },
								{ 35.7, 69.0, KROKUUN },
								{ 35.9, 72.0, KROKUUN },
								{ 36.0, 70.4, KROKUUN },
								{ 36.9, 67.3, KROKUUN },
								{ 37.1, 70.4, KROKUUN },
								{ 38.1, 66.6, KROKUUN },
								{ 38.3, 67.5, KROKUUN },
								{ 38.8, 71.8, KROKUUN },
								{ 39.3, 69.7, KROKUUN },
								{ 40.3, 66.2, KROKUUN },
							},
							["groups"] = { i(129749 ) },	-- Argunite Fragments (QI!)
						}),
					}),
					petbattle(q(49045)),	-- Deathscreech
					q(47720),	-- Eternal Vengeance
					petbattle(q(49042)),	-- Foulclaw
					petbattle(q(49046)),	-- Gnasher
					q(48287),	-- Harvesters of Sorrow
					q(48592),	-- Holding the Spire
					q(48282, {	-- Imp Mother Laglath
						["sym"] = {{"select","npcID",125820}},	-- Select the WQ NPC
					}),
					q(47507, {	-- Khazaduum
						["sym"] = {{"select","npcID",125824}},	-- Select the WQ NPC
					}),
					q(47551),	-- Lessons of Fire and Pain
					q(47707),	-- Melting Down
					q(48502, {	-- Naroua, King of the Forest
						["sym"] = {{"select","npcID",126419}},	-- Select the WQ NPC
					}),
					q(48284),	-- Reap the Fields
					petbattle(q(49044)),	-- Retch
					q(47646),	-- Rope Around
					petbattle(q(49041)),	-- Ruinhoof
					q(47542, {	-- Siegemaster Voraan
						["sym"] = {{"select","npcID",120393}},	-- Select the WQ NPC
					}),
					q(48512, {	-- Sister Subversia
						["sym"] = {{"select","npcID",123464}},	-- Select the WQ NPC
					}),
					q(47563, {	-- Spirits of the Fallen
						["groups"] = {
							i(152995),	-- Sacred Stone (QI!)
						},
					}),
					q(48338),	-- Supplies Needed: Astral Glory
					q(47728, {	-- Talestra the Vile
						["sym"] = {{"select","npcID",123689}},	-- Select the WQ NPC
					}),
					q(48192, {	-- Tar Spitter
						["sym"] = {{"select","npcID",125479}},	-- Select the WQ NPC
					}),
					q(47953, {	-- Terek the Selector
						["sym"] = {{"select","npcID",124804}},	-- Select the WQ NPC
					}),
					q(47712, {	-- The Devastator
						o(271689, {	-- Fel Energy Shard
							["coords"] = {
								{ 41.3, 72.8, KROKUUN },
								{ 42.8, 85.4, KROKUUN },
								{ 42.9, 79.1, KROKUUN },
								{ 42.9, 81.5, KROKUUN },
								{ 43.0, 81.3, KROKUUN },
								{ 43.2, 77.8, KROKUUN },
								{ 43.3, 73.4, KROKUUN },
								{ 43.9, 69.7, KROKUUN },
								{ 45.0, 73.5, KROKUUN },
								{ 45.0, 78.3, KROKUUN },
								{ 46.0, 73.3, KROKUUN },
								{ 46.1, 77.8, KROKUUN },
								{ 46.6, 71.4, KROKUUN },
								{ 47.2, 75.4, KROKUUN },
								{ 47.4, 77.6, KROKUUN },
								{ 48.3, 72.0, KROKUUN },
							},
							["groups"] = { i(151188) },	-- Devastator Energy Cell (QI!)
						}),
					}),
					q(47625),	-- The Ritual We Share
					q(48091, {	-- Vagath the Betrayed
						["sym"] = {{"select","npcID",125388}},	-- Select the WQ NPC
					}),
					q(48615),	-- War Never Changes
					q(48614),	-- Woeful Implications
					q(48337, {	-- Work Order: Astral Glory
						["requireSkill"] = HERBALISM,
					}),
					q(48318, {	-- Work Order: Lightblood Elixirs
						["requireSkill"] = ALCHEMY,
						["groups"] = {
							i(151658),	-- Recipe: Lightblood Elixir [Rank 2] (RECIPE!)
						},
					}),
					q(48323, {	-- Work Order: Tears of the Naaru
						["requireSkill"] = ALCHEMY,
						["groups"] = {
							i(151704),	-- Recipe: Tears of the Naaru [Rank 2] (RECIPE!)
						},
					}),
				})),
			}),
		})),
	}),
});
