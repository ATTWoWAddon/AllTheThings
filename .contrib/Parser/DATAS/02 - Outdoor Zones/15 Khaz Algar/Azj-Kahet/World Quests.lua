---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				79197,	-- Surface Bound
				TWW_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				petbattle(q(82297, {	-- One Hungry Worm
					["provider"] = { "n", 223406 },	-- Zaedu
					["coord"] = { 53.9, 37.0, AZJ_KAHET },
				})),
				petbattle(q(82295, {	-- Ziriak
					["provider"] = { "n", 223443 },	-- Ziriak
					["coord"] = { 61.3, 37.0, NERUBAR_LOWER },
				})),
				pvp(q(80409, {	-- Polarized
					["coord"] = { 80.2, 62.6, AZJ_KAHET },
				})),
				pvp(q(80457, {	-- Serving the Queen
					["coord"] = { 48.0, 82.5, NERUBAR },
				})),
				q(78974, {	-- Beetle-Minded
					["coord"] = { 71.9, 79.8, AZJ_KAHET },
				}),
				q(82526, {	-- Bug Them
					["coord"] = { 71.1, 31.6, NERUBAR },
				}),
				q(82364, {	-- Documenting Discordance
					["coord"] = { 60.6, 75.7, AZJ_KAHET },
				}),
				q(82533, {	-- Dye! Dye Dye!
					["coord"] = { 73.2, 41.2, AZJ_KAHET },
				}),
				q(83718, {	-- Eggstraction
					["coord"] = { 79.0, 78.5, AZJ_KAHET },
				}),
				q(82481, {	-- Enforcer Extermination
					["coord"] = { 56.1, 58.4, AZJ_KAHET },
				}),
				q(82536, {	-- Exfiltration Operation
					["coord"] = { 62.5, 72.0, NERUBAR },
				}),
				q(82524, {	-- Exterminate
					["coord"] = { 63.1, 19.7, AZJ_KAHET },
				}),
				q(82324, {	-- Grub Run
					["coord"] = { 39.6, 39.9, AZJ_KAHET },
				}),
				q(79722, {	-- Gutter Work
					["coord"] = { 57.5, 71.1, AZJ_KAHET },
					["groups"] = {
						i(224102),	-- Chunked Kobyss Innards (QI!)
						i(222921),	-- Mangled Kobyss Innards (QI!)
						i(224103),	-- Uncertain Kobyss Innards (QI!)
						-- i(222980),	-- Slim (PET!) (Was supposed to come from this WQ, but never happened. "Fixed" in 11.0.7 to be rewarded from the Quest Grad, Gutsy Solutions
					},
				}),
				q(82468, {	-- Let Them Win
					["coord"] = { 30.4, 44.1, AZJ_KAHET },
				}),
				q(82297, {	-- One Hungry Worm
					["coord"] = { 51.8, 29.8, AZJ_KAHET },
				}),
				q(82363, {	-- Opposing Forces
					["coord"] = { 42.2, 23.4, AZJ_KAHET },
				}),
				q(82521, {	-- Pawns of Dark Masters
					["coord"] = { 61.6, 75.0, AZJ_KAHET },
				}),
				q(81824, {	-- Skyrider Racing - City of Threads Twist
					["coord"] = { 26.4, 7.2, NERUBAR },
				}),
				q(81825, {	-- Skyrider Racing - Maddening Deep Dip
					["coord"] = { 77.9, 79.6, AZJ_KAHET },
				}),
				q(81829, {	-- Skyrider Racing - Pit Plunge
					["coord"] = { 23.8, 48.4, AZJ_KAHET },
				}),
				q(81828, {	-- Skyrider Racing - Rak-Ahat Rush
					["coord"] = { 71.2, 36.6, AZJ_KAHET },
				}),
				q(81831, {	-- Skyrider Racing - Siegehold Scuttle
					["coord"] = { 40.2, 32.2, AZJ_KAHET },
				}),
				q(81827, {	-- Skyrider Racing - The Weaver's Wing
					["coord"] = { 53.7, 41.2, AZJ_KAHET },
				}),
				q(82387, {	-- Slay the Goo, Save the World
					["coord"] = { 61.3, 76.0, AZJ_KAHET },
				}),
				q(79116, {	-- Spider Optics
					["coord"] = { 69.4, 76.6, AZJ_KAHET },
				}),
				q(79960, {	-- Taking It To Go
					["coord"] = { 75.0, 77.4, AZJ_KAHET },
					["groups"] = {
						i(216664),	-- Threading Lure (QI!)
					},
				}),
				q(82266, {	-- Tower Washing Simulator
					["coord"] = { 37.0, 34.1, NERUBAR },
					["groups"] = {
						i(223220),	-- Kaheti All-Purpose Cleanser (QI!)
					},
				}),
				q(78995, {	-- Truffle Shuffle
					["coord"] = { 73.1, 71.4, AZJ_KAHET },
				}),
				q(82332, {	-- Unassuming Delivery Spider
					["coord"] = { 62.6, 22.4, NERUBAR },
				}),
				q(83536, {	-- Undertide Undertaker
					["coord"] = { 44.6, 40.9, AZJ_KAHET },
				}),
				q(79958, {	-- Worm Sign, Sealed, Delivered
					["coord"] = { 72.6, 77.1, AZJ_KAHET },
				}),
				q(79959, {	-- Wormcraft Rumble
					["coord"] = { 73.0, 83.6, AZJ_KAHET },
				}),
				n(SPECIAL, {
					q(82414, {	-- Special Assignment: A Pound of Cure
						["coord"] = { 63.9, 17.3, AZJ_KAHET },
					}),
					q(82159, {	-- Special Assignment: A Pound of Cure
						-- ["coord"] = { x, y, AZJ_KAHET },
					}),
					q(82161),	-- Special Assignment: Bombs from Behind [Trigger]
					q(82531, {	-- Special Assignment: Bombs from Behind
						["sourceQuests"] = { 82161 },	-- Special Assignment: Bombs from Behind [Trigger]
						-- ["coord"] = { XX, YY, AZJ_KAHET }
					}),
				}),
			}),
		}),
	}),
}));
