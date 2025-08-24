---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(17560, {	-- Ancient Stones of the Dragon Isles
			["sym"] = {{"meta_achievement",
				17561,	-- Ancient Stones of the Waking Shores
				17562,	-- Ancient Stones of the Ohn'ahran Plains
				17563,	-- Ancient Stones of the Azure Span
				17564,	-- Ancient Stones of Thaldraszus
			}},
			["timeline"] = { ADDED_10_1_0 },
		}),
		petbattle(ach(16464, {	-- Battle on the Dragon Isles
			crit(55486, {	-- Eye of the Stormling
				["_quests"] = { 71206 },
			}),
			crit(55487, {	-- Mini Manafiend Melee
				["_quests"] = { 71202 },
			}),
			crit(55488, {	-- Swog the Elder
				["_quests"] = { 66588 },
			}),
			crit(55489, {	-- The Grand Master
				["_quests"] = { 71145 },
			}),
			crit(55490, {	-- The Oldest Dragonfly
				["_quests"] = { 71166 },
			}),
			crit(55485, {	-- The Terrible Three
				["_quests"] = { 66551 },
			}),
			crit(55492, {	-- Two and Two Together
				["_quests"] = { 71140 },
			}),
			crit(55493, {	-- You Have to Start Somewhere
				["_quests"] = { 71180 },
			}),
		})),
		petbattle(ach(17406, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {	-- Battle on the Dragon Isles II
			crit(58212, {	-- Adinakon
				["_quests"] = { 74841 },
			}),
			crit(58213, {	-- Lyver
				["_quests"] = { 74838 },
			}),
			crit(58214, {	-- Enok the Stinky
				["_quests"] = { 74835 },
			}),
			crit(58215, {	-- Right Twice a Day
				["_quests"] = { 74794 },
			}),
			crit(58216, {	-- Sharp as Flint
				["_quests"] = { 74840 },
			}),
			crit(58217, {	-- Paws of Thunder
				["_quests"] = { 74837 },
			}),
			crit(58218, {	-- A New Vocation
				["_quests"] = { 74836 },
			}),
			crit(58219, {	-- They're Full of Stars!
				["_quests"] = { 74792 },
			}),
		}))),
		ach(16761, {	-- Dragon Isles Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16400,	-- Explore the Waking Shores
				16457,	-- Explore the Ohn'ahran Plains
				16460,	-- Explore the Azure Span
				16518,	-- Explore Thaldraszus
			}},
		}),
		ach(19307, {	-- Dragon Isles Pathfinder
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16334,	-- Waking Hope
				15394,	-- Ohn'a'Roll
				16336,	-- Azure Spanner
				16363,	-- Just Don't Ask Me to Spell It
				17739,	-- Embers of Neltharion
				16761,	-- Dragon Isles Explorer
				17766,	-- Explore Zaralek Cavern
				19309,	-- Explore the Emerald Dream
			}},
			["timeline"] = { ADDED_10_2_0 },
		}),
		petbattle(ach(16519, {	-- Dragon Isles Safari
			crit(55642, {	-- Azure Crystalspine
				["crs"] = { 192265 },
			}),
			crit(55644, {	-- Blue Dasher
				["crs"] = { 197629 },
			}),
			crit(55656, {	-- Crimsonspine
				["crs"] = { 192268 },
			}),
			crit(55645, {	-- Emberling
				["crs"] = { 193024 },
			}),
			crit(55646, {	-- Grassland Stomper
				["crs"] = { 189153 },
			}),
			crit(55647, {	-- Grizzlefur Cub
				["crs"] = { 194720 },
			}),
			crit(55648, {	-- Igneoid
				["crs"] = { 189121 },
			}),
			crit(55649, {	-- Ironbeak Duck
				["crs"] = { 189131 },
			}),
			crit(55650, {	-- Kindlet
				["crs"] = { 193000 },
			}),
			crit(55651, {	-- Magma Slug
				["crs"] = { 189094 },
			}),
			crit(55652, {	-- Palamanther
				["crs"] = { 189122 },
			}),
			crit(55653, {	-- Polliswog
				["crs"] = { 197637 },
			}),
			crit(55654, {	-- Pricklefury Hare
				["crs"] = { 189093 },
			}),
			crit(55657, {	-- Scruffy Ottuk
				["crs"] = { 189103 },
			}),
			crit(55658, {	-- Shyfly
				["crs"] = { 189102 },
			}),
			crit(55659, {	-- Snowlemental
				["crs"] = { 189107 },
			}),
			crit(55660, {	-- Stoneshell
				["crs"] = { 192254 },
			}),
			crit(55661, {	-- Swoglet
				["crs"] = { 189104 },
			}),
			crit(55662, {	-- Tiny Timbertooth
				["crs"] = { 189658 },
			}),
			crit(55663, {	-- Treeflitter
				["crs"] = { 189097 },
			}),
			crit(55664, {	-- Trunkalumpf
				["crs"] = { 189110 },
			}),
			crit(55666, {	-- Vorquin Runt
				["crs"] = { 191323 },
			}),
			crit(55667, {	-- Wild Duckling
				["crs"] = { 189136 },
			}),
			crit(55668, {	-- Woodbiter Piculet
				["crs"] = { 189157 },
			}),
		})),
		ach(19463, {	-- Dragon Quests
			["timeline"] = { ADDED_10_2_6 },
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17773,	-- A Blue Dawn
				17546,	-- A New Beginning
				17734,	-- Active Listening Skills
				19507,	-- Fringe Benefits
				16683,	-- In Tyr's Footsteps
				18958,	-- Of the Tyr's Guard
			}},
		}),
		ach(15939, {	-- Dragon Racing Completionist: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				15915,	-- Waking Shores: Bronze
				15927,	-- Waking Shores Advanced: Bronze
				15918,	-- Ohn'ahran Plains: Bronze
				15930,	-- Ohn'ahran Plains Advanced: Bronze
				15921,	-- Azure Span: Bronze
				15933,	-- Azure Span Advanced: Bronze
				15924,	-- Thaldraszus: Bronze
				15936,	-- Thaldraszus Advanced: Bronze
			}},
			["groups"] = {
				i(199669),	-- Spiked Crimson Spaulders
			},
		}),
		ach(15940, {	-- Dragon Racing Completionist: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				15916,	-- Waking Shores: Silver
				15928,	-- Waking Shores Advanced: Silver
				15919,	-- Ohn'ahran Plains: Silver
				15931,	-- Ohn'ahran Plains Advanced: Silver
				15922,	-- Azure Span: Silver
				15934,	-- Azure Span Advanced: Silver
				15925,	-- Thaldraszus: Silver
				15937,	-- Thaldraszus Advanced: Silver
			}},
			["groups"] = {
				i(199688),	-- Bronze Racing Enthusiast (PET!)
			},
		}),
		ach(15941, {	-- Dragon Racing Completionist: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				15917,	-- Waking Shores: Gold
				15929,	-- Waking Shores Advanced: Gold
				15920,	-- Ohn'ahran Plains: Gold
				15932,	-- Ohn'ahran Plains Advanced: Gold
				15923,	-- Azure Span: Gold
				15935,	-- Azure Span Advanced: Gold
				15926,	-- Thaldraszus: Gold
				15938,	-- Thaldraszus Advanced: Gold
			}},
			["groups"] = {
				title(478),	-- Isles Racer <Name>
			},
		}),
		ach(18790, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Dragonriding Challenge: Dragon Isles: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18757,	-- Azure Span Challenge: Bronze
				18779,	-- Forbidden Reach Challenge: Bronze
				18754,	-- Ohn'ahran Plains Challenge: Bronze
				18760,	-- Thaldraszus Challenge: Bronze
				18748,	-- Waking Shores Challenge: Bronze
				18786,	-- Zaralek Cavern Challenge: Bronze
			}},
			["groups"] = {
				i(208433),	-- Bronze Racer's Pennant (TOY!)
			},
		})),
		ach(18791, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Dragonriding Challenge: Dragon Isles: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18758,	-- Azure Span Challenge: Silver
				18780,	-- Forbidden Reach Challenge: Silver
				18755,	-- Ohn'ahran Plains Challenge: Silver
				18761,	-- Thaldraszus Challenge: Silver
				18749,	-- Waking Shores Challenge: Silver
				18787,	-- Zaralek Cavern Challenge: Silver
			}},
		})),
		ach(18792, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Dragonriding Challenge: Dragon Isles: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				18759,	-- Azure Span Challenge: Gold
				18781,	-- Forbidden Reach Challenge: Gold
				18756,	-- Ohn'ahran Plains Challenge: Gold
				18762,	-- Thaldraszus Challenge: Gold
				18750,	-- Waking Shores Challenge: Gold
				18788,	-- Zaralek Cavern Challenge: Gold
			}},
			["groups"] = {
				title(523),	-- Isles Ace <Name>
			}
		})),
		header(HEADERS.Achievement, 16512, {	-- Family Battler of the Dragon Isles
			petbattle(ach(16512, {	-- Family Battler of the Dragon Isles
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16501,	-- Aquatic Battler of the Dragon Isles
					16503,	-- Beast Battler of the Dragon Isles
					16504,	-- Critter Battler of the Dragon Isles
					16505,	-- Dragonkin Battler of the Dragon Isles
					16506,	-- Elemental Battler of the Dragon Isles
					16507,	-- Flying Battler of the Dragon Isles
					16508,	-- Humanoid Battler of the Dragon Isles
					16509,	-- Magic Battler of the Dragon Isles
					16510,	-- Mechanical Battler of the Dragon Isles
					16511,	-- Undead Battler of the Dragon Isles
				}},
				["groups"] = {
					i(200874),	-- Lady Feathersworth (PET!)
				},
			})),
			petbattle(ach(16501, {	-- Aquatic Battler of the Dragon Isles
				crit(55537, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55540, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55541, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55536, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55539, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55542, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55535, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55538, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16503, {	-- Beast Battler of the Dragon Isles
				crit(55543, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55544, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55550, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55545, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55546, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55547, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55548, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55549, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16504, {	-- Critter Battler of the Dragon Isles
				crit(55551, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55552, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55553, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55554, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55555, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55556, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55557, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55558, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16505, {	-- Dragonkin Battler of the Dragon Isles
				crit(55559, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55560, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55561, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55562, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55563, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55564, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55565, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55566, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16506, {	-- Elemental Battler of the Dragon Isles
				crit(55568, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55569, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55570, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55571, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55572, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55573, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55574, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55575, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16507, {	-- Flying Battler of the Dragon Isles
				crit(55576, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55577, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55578, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55579, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55580, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55581, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55582, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55583, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16508, {	-- Humanoid Battler of the Dragon Isles
				crit(55584, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55585, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55586, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55587, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55588, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55589, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55590, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55591, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16509, {	-- Magic Battler of the Dragon Isles
				crit(55592, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55593, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55594, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55595, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55596, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55597, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55598, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55599, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16510, {	-- Mechanical Battler of the Dragon Isles
				crit(55600, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55602, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55603, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55604, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55605, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55606, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55607, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55608, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
			petbattle(ach(16511, {	-- Undead Battler of the Dragon Isles
				crit(55609, {	-- Arcantus
					["crs"] = { 197417 },
					["coord"] = { 41.0, 59.4, THE_AZURE_SPAN },
				}),
				crit(55610, {	-- Bakhushek
					["crs"] = { 197102 },
					["coord"] = { 62.0, 41.6, OHNAHRAN_PLAINS },
				}),
				crit(55611, {	-- Enyobon
					["crs"] = { 197336 },
					["coord"] = { 39.4, 73.6, THALDRASZUS },
				}),
				crit(55612, {	-- Haniko
					["crs"] = { 196264 },
					["coord"] = { 38.8, 83.2, THE_WAKING_SHORES },
				}),
				crit(55613, {	-- Patchu
					["crs"] = { 196069 },
					["coord"] = { 13.8, 49.8, THE_AZURE_SPAN },
				}),
				crit(55614, {	-- Setimothes
					["crs"] = { 197350 },
					["coord"] = { 56.2, 49.2, THALDRASZUS },
				}),
				crit(55615, {	-- Stormamu
					["crs"] = { 197447 },
					["coord"] = { 24.4, 42.4, OHNAHRAN_PLAINS },
				}),
				crit(55616, {	-- Swog
					["crs"] = { 189376 },
					["coord"] = { 26.0, 92.4, THE_WAKING_SHORES },
				}),
			})),
		}),
		ach(16323, {	-- Fragments of History
			crit(55025, {	-- Dislodged Dragoneye
				["_quests"] = { 70236 },	-- Dislodged Dragoneye
			}),
			crit(55026, {	-- Tail Fragment
				["_quests"] = { 70207 },	-- Tail Fragment
			}),
			crit(55027, {	-- Broken Banding
				["_quests"] = { 70175 },	-- Broken Banding
			}),
			crit(55028, {	-- Chunk of Sculpture
				["_quests"] = { 70806 },	-- Chunk of Sculpture
			}),
			crit(55029, {	-- Coldwashed Dragonclaw
				["_quests"] = { 70791 },	-- Coldwashed Dragonclaw
			}),
			crit(55030, {	-- Finely Carved Wing
				["_quests"] = { 70789 },	-- Finely Carved Wing
			}),
			crit(55031, {	-- Golden Claw
				["_quests"] = { 70204 },	-- Golden Claw
			}),
			crit(55032, {	-- Previous Stone Fragment
				["_quests"] = { 70805 },	-- Precious Stone Fragment
			}),
			crit(55033, {	-- Stone Dragontooth
				["_quests"] = { 70790 },	-- Stone Dragontooth
			}),
			crit(55034, {	-- Wrapped Gold Band
				["_quests"] = { 70788 },	-- Wrapped Gold Band
			}),
		}),
		ach(19308, {	-- Freshscales Fifteen
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16994,	-- Valdrakken Accord
				16884,	-- Dragonscale Expedition
				16944,	-- Iskaara Tuskar
				17064,	-- Maruuk Centaur
				17756,	-- Loamm Niffen
				19230,	-- Dream Wardens
			}},
			["timeline"] = { ADDED_10_2_0, REMOVED_11_0_7 },
		}),
		ach(41184, {	-- Freshscales Fifteen
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41171,	-- Friends in the Accord
				41172,	-- Friends in the Field
				41173,	-- Friend of the Family
				41170,	-- Friends in the Plains
				41175,	-- Friends in Loamm Places
				41176,	-- Friends in the Dream
			}},
			["timeline"] = { ADDED_11_0_7 },
		}),
		ach(16585, {	-- Loremaster of the Dragon Isles
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16334,	-- Waking Hope
				16401,	-- Sojourner of the Waking Shores
				15394,	-- Ohn'a'Roll
				16405,	-- Sojourner of Ohn'ahran Plains
				16336,	-- Azure Spanner
				16428,	-- Sojourner of Azure Span
				16363,	-- Just Don't Ask Me to Spell It
				16398,	-- Sojourner of Thaldraszus
			}},
		}),
		ach(18559, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Many Boxes, Many Rockses
			["cost"] = {{"i", 199216, 50 }},	-- 50x A Box of Rocks
			["groups"] = {
				i(207099),	-- Tiny Box of Tiny Rocks (TOY!)
			},
		})),
		ach(17330, {	-- Reverse Racer: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17201,	-- Azure Span Reverse: Bronze
				17198,	-- Ohn'ahran Plains Reverse: Bronze
				17204,	-- Thaldraszus Reverse: Bronze
				17195,	-- Waking Shores Reverse: Bronze
			}},
			["timeline"] = { ADDED_10_0_5 },
		}),
		ach(17331, {	-- Reverse Racer: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17202,	-- Azure Span Reverse: Silver
				17199,	-- Ohn'ahran Plains Reverse: Silver
				17205,	-- Thaldraszus Reverse: Silver
				17196,	-- Waking Shores Reverse: Silver
			}},
			["timeline"] = { ADDED_10_0_5 },
		}),
		ach(17332, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {	-- Reverse Racer: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				17203,	-- Azure Span Reverse: Gold
				17200,	-- Ohn'ahran Plains Reverse: Gold
				17206,	-- Thaldraszus Reverse: Gold
				17197,	-- Waking Shores Reverse: Gold
			}},
			["groups"] = {
				title(490),	-- Reverse Racer <Name>
			}
		})),
		ach(16298, {	-- Treasure Hunter of the Dragon Isles
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				16297,	-- Treasures of The Waking Shores
				16299,	-- Treasures of the Ohn'ahran Plains
				16300,	-- Treasures of The Azure Span
				16301,	-- Treasures of Thaldraszus
			}},
		}),
		ach(16729, {	-- To All the Squirrels Hidden Til Now
			crit(56477, {	-- Kelp Nibbler
				["crs"]	= { 189737 },	-- Kelp Nibbler
				["coord"] = { 76.81, 44.12, THE_WAKING_SHORES },
			}),
			crit(56478, {	-- Phoenix Hatchling
				["crs"]	= { 192135 },	-- Phoenix Hatchling
				["coord"] = { 65.13, 28.58, THE_WAKING_SHORES },
			}),
			crit(56479, {	-- Docile Kit
				["crs"]	= { 193756 },	-- Docile Kit
				["coord"] = { 58.35, 72.55, THE_WAKING_SHORES },
			}),
			crit(56480, {	-- Frilled Hatchling
				["crs"]	= { 186306 },	-- Frilled Hatchling
				["coord"] = { 22.07, 63.78, OHNAHRAN_PLAINS },
			}),
			crit(56481, {	-- Thicket Glider
				["crs"]	= { 192948 },	-- Thicket Glider
				["coord"] = { 52.05, 50.54, OHNAHRAN_PLAINS },
			}),
			crit(56482, {	-- Thunderspine Calf
				["crs"]	= { 192942 },	-- Thunderspine Calf
				["coord"] = { 51.72, 51.79, OHNAHRAN_PLAINS },
			}),
			crit(56483, {	-- Timbertooth Kit
				["crs"]	= { 193594 },	-- Timbertooth Kit
				["coord"] = { 52.95, 58.41, THE_AZURE_SPAN },
			}),
			crit(56484, {	-- Frosty Spiderling
				["crs"]	= { 186481 },	-- Frosty Spiderling
				["coord"] = { 49.92, 57.61, THE_AZURE_SPAN },
			}),
			crit(56485, {	-- Crimson Knocker
				["crs"]	= { 197718 },	-- Crimson Knocker
				["coord"] = { 28.89, 41.94, THE_AZURE_SPAN },
			}),
			crit(56486, {	-- Diminuitive Boghopper
				["crs"]	= { 195869 },	-- Diminuitive Boghopper
				["coord"] = { 56.09, 68.71, THALDRASZUS },
			}),
			crit(56488, {	-- Reservoir Filly
				["crs"]	= { 196652 },	-- Reservoir Filly
				["coord"] =
					-- #if BEFORE 10.1.5
					{ 51.24, 56.82, THALDRASZUS },
					-- #else
					-- moved due to Time Rifts it seems
					{ 51.5, 58.0, THALDRASZUS },
					-- #endif
			}),
			crit(56489, {	-- Rocdrop Scarab
				["crs"]	= { 185148 },	-- Rocdrop Scarab
				["coord"] = { 51.35, 72.61, THALDRASZUS },
			}),
		}),
		ach(16446, {	-- That's Pretty Neat!
			title(472),	-- Birdwatcher <Name>
			crit(55392, {	-- Apex Blazewing
				["crs"] = { 193291 },
				["maps"] = { 2080 },	-- Neltharus
			}),
			crit(55384, {	-- Avis Gryphonheart
				["crs"] = { 193356 },
				["coords"] = {
					{ 51.4, 18.4, THE_WAKING_SHORES },
					{ 33.1, 76.3, THE_WAKING_SHORES },
					{ 58.6, 20.6, OHNAHRAN_PLAINS },
					{ 58.2, 31.8, OHNAHRAN_PLAINS },
					{ 63.2, 57.0, OHNAHRAN_PLAINS },
					{ 36.2, 32.0, THE_AZURE_SPAN },
				},
			}),
			crit(55397, {	-- Blue Terror
				["crs"] = { 193259 },
				["coord"] = { 16.4, 27.8, THE_AZURE_SPAN },
			}),
			crit(55388, {	-- Chef Fry-Aerie
				["crs"] = { 187280 },
				["coord"] = { 43.6, 72.0, THALDRASZUS },
			}),
			crit(55387, {	-- Drakewing
				["crs"] = { 193217 },
				["coord"] = { 49.8, 69.6, THE_WAKING_SHORES },
			}),
			crit(55398, {	-- Eldoren The Reborn
				["crs"] = { 193234 },
				["coord"] = { 47.6, 51.1, THALDRASZUS },
			}),
			crit(55401, {	-- Feasting Buzzard
				["crs"] = { 190960 },
				["coord"] = { 75.8, 40.6, OHNAHRAN_PLAINS },
			}),
			crit(55394, {	-- Forgotten Gryphon
				["crs"] = { 193154 },
				["coord"] = { 33.1, 76.3, THE_WAKING_SHORES },
			}),
			crit(55402, {	-- Glade Ohuna
				["crs"] = { 187496 },
				["coord"] = { 62.6, 55.0, OHNAHRAN_PLAINS },
			}),
			crit(55383, {	-- Halia Cloudfeather
				["crs"] = { 193354 },
				["coords"] = {
					{ 51.4, 18.4, THE_WAKING_SHORES },
					{ 33.1, 76.3, THE_WAKING_SHORES },
					{ 58.6, 20.6, OHNAHRAN_PLAINS },
					{ 58.2, 31.8, OHNAHRAN_PLAINS },
					{ 63.2, 57.0, OHNAHRAN_PLAINS },
					{ 36.2, 32.0, THE_AZURE_SPAN },
				},
			}),
			crit(55393, {	-- Horned Filcher
				["crs"] = { 190218 },
				["coord"] = { 36.8, 36.6, THE_AZURE_SPAN },
			}),
			crit(55389, {	-- Iridescent Peafowl
				["crs"] = { 192383 },
				["coord"] = { 53.2, 53.4, THALDRASZUS },
			}),
			crit(55399, {	-- Liskron the Dazzling
				["crs"] = { 193273 },
				["coord"] = { 36.6, 73.0, THALDRASZUS },
			}),
			crit(55400, {	-- Nergazurai
				["crs"] = { 195895 },
				["coord"] = { 59.0, 75.2, OHNAHRAN_PLAINS },
			}),
			crit(55386, {	-- Ohn'ahra
				["crs"] = { 191248 },
				["coord"] = { 57.7, 31.9, OHNAHRAN_PLAINS },
			}),
			crit(55385, {	-- Palla of the Wing
				["crs"] = { 193357 },
				["coords"] = {
					{ 51.4, 18.4, THE_WAKING_SHORES },
					{ 33.1, 76.3, THE_WAKING_SHORES },
					{ 58.6, 20.6, OHNAHRAN_PLAINS },
					{ 58.2, 31.8, OHNAHRAN_PLAINS },
					{ 63.2, 57.0, OHNAHRAN_PLAINS },
					{ 36.2, 32.0, THE_AZURE_SPAN },
				},
			}),
			crit(55390, {	-- Pine Flicker
				["crs"] = { 190221 },
				["coord"] = { 66.6, 13.4, THE_AZURE_SPAN },
			}),
			crit(55396, {	-- Quackers the Terrible
				["crs"] = { 192557 },
				["coord"] = { 68.1, 79.0, OHNAHRAN_PLAINS },
			}),
			crit(55391, {	-- Territorial Axebeak
				["crs"] = { 192186 },
				["coord"] = { 42.6, 69.4, THE_WAKING_SHORES },
			}),
			crit(55395, {	-- Zenet Avis
				["crs"] = { 193209 },
				["coord"] = { 31.5, 63.9, OHNAHRAN_PLAINS },
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		n(ACHIEVEMENTS, {
			q(73863),	-- triggers when learning 'Spiked Crimson Spaulders' with completing 'Dragon Racing Completionist' achievement (15939)
		}),
	}),
})));
