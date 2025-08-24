-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_3_0 }, {
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, inst(186, {	-- Hour of Twilight
		["mapID"] = 399,
		["maps"] = { 400 },
		["coords"] = {
			{ 66.2, 29.2, CAVERNS_OF_TIME },	-- dungeon entrance
			{ 64.7, 49.9, TANARIS },	-- entrance to CoT
		},
		["groups"] = {
			n(QUESTS, {
				q(30103, {	-- To Wyrmrest!
					["sourceQuest"] = 30102,	-- The Hour of Twilight
					["qgs"] = {
						54548,	-- Thrall (4 versions, all different areas of the dungeon)
						54634,
						54972,
						55779,
					},
					["groups"] = {
						i(72858),	-- Safeguard Gloves
						i(72887),	-- Cinch of the World Shaman
						i(72888),	-- Ring of the Loyal Companion
					},
				}),
				q(30105, {	-- The Twilight Prophet
					["sourceQuest"] = 30102,	-- The Hour of Twilight (did not drop for me before completing the chain)
					["providers"] = {
						{ "i", 77957 },	-- Urgent Twilight Missive
						{ "n", 54590 },	-- Arcurion
						{ "n", 54968 },	-- Asira Dawnslayer (apparently can drop from this boss if someone queues into the dungeon with the first boss dead)
					},
					["groups"] = {
						i(72884),	-- Writhing Wand
						i(72886),	-- Thrall's Gratitude
						i(76153),	-- Signet of the Twilight Prophet
					},
				}),
			}),
			n(ZONE_DROPS, sharedData({ ["modID"] = 2, }, {
				i(76160, {	-- Drapes of the Dragonshrine
					["crs"] = {
						55559,	-- Crystalline Elemental
						54555,	-- Frozen Servitor
						55106,	-- Twilight Assassin
						55112,	-- Twilight Bruiser
						55107,	-- Twilight Ranger
						55109,	-- Twilight Shadow-Walker
						55111,	-- Twilight Thug
					},
				}),
				i(76161, {	-- Gauntlets of the Twilight Hour
					["crs"] = {
						55559,	-- Crystalline Elemental
						54555,	-- Frozen Servitor
						55106,	-- Twilight Assassin
						55112,	-- Twilight Bruiser
						55107,	-- Twilight Ranger
						55109,	-- Twilight Shadow-Walker
						55111,	-- Twilight Thug
					},
				}),
				i(76162, {	-- Twilight Amulet
					["crs"] = {
						55559,	-- Crystalline Elemental
						54555,	-- Frozen Servitor
						55106,	-- Twilight Assassin
						55112,	-- Twilight Bruiser
						55107,	-- Twilight Ranger
						55109,	-- Twilight Shadow-Walker
						55111,	-- Twilight Thug
					},
				}),
			})),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(322, {	-- Arcurion
					["crs"] = { 54590 },	-- Arcurion
					["groups"] = {
						i(72853),	-- Arcurion Legguards
						i(72851),	-- Chillbane Belt
						i(76150),	-- Evergreen Wristbands
						i(72854),	-- Iceward Cloak
						i(72850),	-- Surestride Boots
						i(72849),	-- Wayfinder Boots
					},
				}),
				e(342, {	-- Asira Dawnslayer
					["crs"] = { 54968 },	-- Asira Dawnslayer
					["groups"] = {
						i(157616, {	-- Chestguard of Futility
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(76151),	-- Cloak of Subtle Light
						i(72855),	-- Corrupted Carapace
						i(72859),	-- Dawnslayer Helm
						i(72857),	-- Leggings of Blinding Speed
						i(72860),	-- Mandible of the Old Ones
						i(72856),	-- Pauldrons of Midnight Whispers
					},
				}),
				e(341, {	-- Archbishop Benedictus
					["crs"] = { 54938 },	-- Archbishop Benedictus
					["groups"] = {
						ach(6132, {	-- Eclipse
							["description"] = "You need to get Benedictus down to 60% to trigger stage two and surrounding Twilight Sparks.",
						}),
						ach(6119),	-- Heroic: Hour of Twilight
						ach(6122),	-- Heroic: Hour of Twilight Guild Run
						i(72870),	-- Betrayer's Pauldrons
						i(72867),	-- Clattering Claw
						i(72868),	-- Desecrated Shoulderguards
						i(72869),	-- Dragonsmaw Blaster
						i(72862),	-- Fanged Tentacle
						i(72865),	-- Mantle of False Virtue
						i(72861),	-- Pauldrons of the Dragonblight
						i(72864),	-- Pauldrons of Conviction
						i(72901),	-- Rosary of Light
						i(72863),	-- Stalk of Corruption
						i(72866),	-- Treachery's Bite
						i(72900),	-- Veil of Lies
					},
				}),
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(186, {
		q(35439),	-- Hour of Twilight Quest Reward - Heroic completion
	}),
})));
