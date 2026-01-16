---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				71232,	-- Renown of the Dragon Isles
				DF_ACCOUNT_CAMPAIGN_QUEST,
				75145,	-- In the Wake of the Ashes
			},
			["groups"] = {
				n(QUESTS, sharedData({ ["isWorldQuest"] = true, }, {
					q(73221, {	-- A Clear State of Mind
						["coord"] = { 51.9, 59.6, ZARALEK_CAVERN },
						["groups"] = {
							i(202714),	-- M.U.S.T (QI!)
						},
					}),
					q(75060, {	-- A Veritable Dumping Ground
						["coord"] = { 51.3, 24.4, ZARALEK_CAVERN },
					}),
					q(75343, {	-- All That Glitter
						["coord"] = { 58.1, 73.5, ZARALEK_CAVERN },
						["groups"] = {
							i(205688, {	-- Glutinous Glitterscale Glob (TOY!)
								["description"] = "Gets sometimes rewarded as bonus loot upon completing the Quest.",
							}),
						},
					}),
					petbattle(q(75750, {	-- Are They Not Beautiful?
						["coord"] = { 38.6, 50.2, ZARALEK_CAVERN },
					})),
					q(75063, {	-- Ambergrease
						["coord"] = { 50.4, 74.1, ZARALEK_CAVERN },
					}),
					pvp(q(75162, {	-- Conjuring Elements
						["coord"] = { 54.2, 39.6, ZARALEK_CAVERN },
						["groups"] = {
							i(204473),	-- Element Siphoner
							ach(17852, {	-- Elemental Conjuror
								crit(59313),	-- Emerald Infusion
								crit(59314),	-- Crimson Infusion
								crit(59315),	-- Primordial Infusion
								crit(59317),	-- Prismatic Infusion
								crit(59318),	-- Stone Infusion
								crit(59316),	-- Temporal Infusion
							}),
						},
					})),
					q(75030, {	-- Crystal Catastrophe!
						["coord"] = { 59.0, 45.6, ZARALEK_CAVERN },
					}),
					q(75344, {	-- Crystal Cracker
						["coord"] = { 58.3, 62.3, ZARALEK_CAVERN },
					}),
					q(75062, {  -- Crystalline Conundrum
						["coord"] = { 56.9, 63.7, ZARALEK_CAVERN },
					}),
					q(75661, {  -- Curative Crystalline Collection
						["coord"] = { 39.5, 74.3, ZARALEK_CAVERN },
						["groups"] = {
							i(203012),	-- Viridian Heartcrystal (QI!)
						},
					}),
					q(75346, {	-- Data Gathering
						["coord"] = { 60.5, 69.4, ZARALEK_CAVERN },
					}),
					q(75200, {	-- Deepflayer Slayer
						["coord"] = { 60.8, 39.6, ZARALEK_CAVERN },
					}),
					q(74292, {	-- Deephollow Mysteries
						["coord"] = { 60.9, 53.8, ZARALEK_CAVERN },
						["groups"] = {
							i(203391),	-- Dented Dwarven Pocketwatch (QI!)
							i(205797),	-- Filthy Bundle (QI!)
							i(203388),	-- Gunky Insignia (QI!)
							i(203387),	-- Oddly Familiar Training Weapon (QI!)
							i(203392),	-- Old Mirror Shard (QI!)
							i(204329),	-- Petrified Spider Leg (QI!)
							i(203389),	-- Shiny Rock (QI!)
							i(204326),	-- Strange Artifact (QI!)
						},
					}),
					petbattle(q(75834, {  -- Delver Mardei
						["coord"] = { 65.6, 49.0, ZARALEK_CAVERN },
					})),
					petbattle(q(75835, {  -- Do You Even Train?
						["coord"] = { 45.7, 81.5, ZARALEK_CAVERN },
					})),
					q(75660, {	-- Ending Their Watch
						["coord"] = { 40.4, 68.9, ZARALEK_CAVERN },
					}),
					q(74992, {	-- Fire Resistance Gear
						["coord"] = { 34.0, 41.2, ZARALEK_CAVERN },
						["groups"] = {
							i(204314),	-- Corehound Hide (QI!)
							i(204315),	-- Zaqali Bone Needle (QI!)
						},
					}),
					q(74945, {	-- Guanite Gambit
						["coord"] = { 49.5, 42.8, ZARALEK_CAVERN },
					}),
					q(74988, {	-- If You Can't Take the Heat
						["coord"] = { 34.2, 42.0, ZARALEK_CAVERN },
						["groups"] = {
							i(204344),	-- Conductive Lodestone (QI!)
						},
					}),
					q(74985, {	-- Like Moths to a Flame
						["coord"] = { 49.1, 50.1, ZARALEK_CAVERN },
					}),
					q(75350, {  -- Niffen Nabber
						["coord"] = { 59.2, 73.4, ZARALEK_CAVERN },
					}),
					q(75061, {	-- No Mushroom For Ever
						["coord"] = { 54.1, 66.4, ZARALEK_CAVERN },
					}),
					q(74879, {	-- Ph Balance
						["coord"] = { 48.8, 39.8, ZARALEK_CAVERN },
					}),
					q(75151, {	-- Redistributing the Remnants
						["coord"] = { 52.9, 21.5, ZARALEK_CAVERN },
						["groups"] = {
							o(390557, {	-- Drakeforged Arming Rack
								["coords"] = {
									{ 41.8, 18.8, ZARALEK_CAVERN },
									{ 42.4, 23.9, ZARALEK_CAVERN },
									{ 42.5, 19.5, ZARALEK_CAVERN },
									{ 42.9, 18.7, ZARALEK_CAVERN },
									{ 43.1, 23.1, ZARALEK_CAVERN },
									{ 43.4, 17.6, ZARALEK_CAVERN },
									{ 43.9, 14.7, ZARALEK_CAVERN },
									{ 43.9, 18.2, ZARALEK_CAVERN },
									{ 44.1, 20.2, ZARALEK_CAVERN },
									{ 44.4, 22.8, ZARALEK_CAVERN },
									{ 45.1, 19.0, ZARALEK_CAVERN },
								},
								["groups"] = { i(204437) },	-- Drakeforged Armaments (QI!)
							}),
						},
					}),
					q(75663, {	-- Restless Torment
						["coord"] = { 51.2, 42.8, ZARALEK_CAVERN },
					}),
					q(75067, {	-- Rock Viper Roundup
						["coord"] = { 45.2, 68.1, ZARALEK_CAVERN },
					}),
					q(74990, {	-- Roiling Shadow
						["coord"] = { 32.9, 49.3, ZARALEK_CAVERN },
					}),
					q(73698, {	-- Rolie Polie Molie
						["coord"] = { 62.1, 49.8, ZARALEK_CAVERN },
						["groups"] = {
							i(203229),	-- Snail Slime (QI!)
						},
					}),
					q(75155, {	-- Shadowflame Snuffer
						["coord"] = { 52.9, 21.5, ZARALEK_CAVERN },
					}),
					q(75345, {	-- Shell Corporation
						["coord"] = { 57.8, 61.0, ZARALEK_CAVERN },
						["groups"] = {
							i(205199),	-- Slime Sheathed Shell (QI!)
						},
					}),
					q(75064, {	-- Shrooming for a Living
						["coord"] = { 51.0, 74.1, ZARALEK_CAVERN },
					}),
					q(75128, {	-- Slime Ranching
						["coord"] = { 51.3, 23.6, ZARALEK_CAVERN },
					}),
					q(73408, {	-- Sniffen 'em Out!
						["coord"] = { 58.8, 39.9, ZARALEK_CAVERN },
						["groups"] = {
							i(203013),	-- Niffen Incense (QI!)
						},
					}),
					q(75071, {	-- Sniffing Mice are Nice
						["coord"] = { 51.3, 73.9, ZARALEK_CAVERN },
					}),
					q(75058, {  -- Spearheading Acquisition
						["coord"] = { 38.3, 63.1, ZARALEK_CAVERN },
					}),
					petbattle(q(75680, {  -- To a Land Down Under
						["coord"] = { 52.3, 65.2, ZARALEK_CAVERN },
					})),
					q(74991, {	-- We Have Returned
						["coord"] = { 34.0, 41.2, ZARALEK_CAVERN },
						["groups"] = {
							i(204365),	-- Bundle of Ebon Spears (QI!)
						},
					}),
					q(74989, {	-- Zealous Defenses
						["coord"] = { 31.4, 52.0, ZARALEK_CAVERN },
					}),
				})),
				n(REWARDS, {
					i(204460),	-- Zaralek Glowspores
				}),
			},
		}),
	}),
})));
