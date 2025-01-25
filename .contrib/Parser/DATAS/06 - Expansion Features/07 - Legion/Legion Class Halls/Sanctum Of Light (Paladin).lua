-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
			["maps"] = { SANCTUM_OF_LIGHT },
			["g"] = {
				n(ARTIFACTS, {
					cl(PALADIN, HOLY, {
						i(139564, {	-- Lost Edicts of the Watcher
							["description"] = "Drops from any demon.",
							["groups"] = {
								artifact(977),	-- Holy Paladin Hidden Artifact Appearance
							},
						}),
					}),
					cl(PALADIN, PROTECTION, {
						i(139565, {	-- Spark of the Fallen Exarch [Protection Paladin Hidden Artifact Appearance]
							artifact(720),	-- Find Hidden Artifact Skin
						}),
					}),
					cl(PALADIN, RETRIBUTION, {
						q(43682, {	-- Book Presented
							["name"] = "Book Presented",
							["description"] = "You need to bring the Complete Copy of Nat Pagle's Fishing Guide and the Head of Nefarian for him to grant you this interaction.\n\nAlliance: Go to Western Plaguelands and talk to Alexia Ironknife.\n\nHorde: Go to Tirisfal Glades and talk to Bardu Sharpeye.",
							-- TODO: does this have an actual sourceQuest or no
							-- ["sourceQuest"] = -91190,	-- Special Quest ID for Sister Elda <Keeper of the Ancient Tomes>
							["qg"] = 11486,	-- Prince Tortheldrin
							["maps"] = { DIRE_MAUL, 236 },	-- Capital Gardens
							["cost"] = {
								{ "i", 139620, 1 },	-- A Complete Copy of "Nat Pagle's Guide to Extreme Anglin'."
								-- #if AFTER 8.2.0.30918
								{ "i", 170511, 1 },	-- Head of Nefarian (Paladin, for Artifact appearance)
								-- #else
								{ "i", 19003, 1 },	-- Head of Nefarian (A)
								{ "i", 19002, 1 },	-- Head of Nefarian (H)
								-- #endif
							},
						}),
						q(43683, {	-- Traveler Found
							["name"] = "Traveler Found",
							["description"] = "After talking to Prince Tortheldrin, you can talk to her/him for the next part of the chain. After you have done so, read Grand Inquisitor Isillien's Journal at Hearthglen in Western Plaguelands.",
							["sourceQuest"] = 43682,	-- Book Presented
							["timeline"] = { ADDED_7_0_3 },
							["qgs"] = {
								11609,	-- Alexia Ironknife
								11608,	-- Bardu Sharpeye
							},
							["coords"] = {
								{ 43.0, 84.2, WESTERN_PLAGUELANDS },
								{ 83.2, 71.8, TIRISFAL_GLADES },
							},
						}),
						q(43684, {	-- Notes Read
							["name"] = "Notes Read",
							["description"] = "After reading this, you can go kill Large Vile Slime next to Thondroril River in Western Plaguelands.",
							["sourceQuest"] = 43683,	-- Traveler Found
							["qg"] = 111121,	-- Grand Inquisitor Isillien's Journal
							["coord"] = { 42.4, 18.7, WESTERN_PLAGUELANDS },
						}),
						q(43685, {	-- Phylactery Used
							["name"] = "Phylactery Used",
							["sourceQuest"] = 43684,	-- Notes Read
							["qg"] = 111123,	-- Timolain the Accursed
							["maps"] = { WESTERN_PLAGUELANDS },
							["cost"] = { { "i", 139623, 1 } },	-- 1xTimolain's Phylactery
						}),
						q(43687, {	-- Walking in the Shadows
							["description"] = "You must have the Shard of Darkness in your inventory in order for him to give you this quest. Once you have it, go to the Legion version of Acherus: The Ebon Hold using the Dalaran flight master.",
							["sourceQuests"] = { 43685 },	-- Phylactery Used
							["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
							["coord"] = { 49.8, 72.2, SANCTUM_OF_LIGHT },
							["cost"] = { { "i", 139624, 1 } },	-- 1xShard of Darkness
							["g"] = {
								i(139566, {	-- Heart of Corruption
									artifact(865),	-- Retribution Hidden Artifact Appearance
								}),
							},
						}),
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(770),	-- Shieldbearer Phalanx
					follower(843),	-- Shieldbearer Phalanx
					follower(844),	-- Shieldbearer Phalanx
					follower(845),	-- Shieldbearer Phalanx
					follower(1043),	-- Silver Hand Crusaders
					follower(1044),	-- Silver Hand Crusaders
					follower(1045),	-- Silver Hand Crusaders
					follower(1046),	-- Silver Hand Crusaders
					follower(675),	-- Silver Hand Knights
					follower(846),	-- Silver Hand Knights
					follower(847),	-- Silver Hand Knights
					follower(848),	-- Silver Hand Knights
					follower(771),	-- Silver Hand Templar
					follower(849),	-- Silver Hand Templar
					follower(850),	-- Silver Hand Templar
					follower(851),	-- Silver Hand Templar
					follower(674),	-- Squad of Squires
					follower(840),	-- Squad of Squires
					follower(841),	-- Squad of Squires
					follower(842),	-- Squad of Squires
				})),
				n(QUESTS, {
					q(38710, {	-- An Urgent Gathering
						["provider"] = { "n", 92909 },	-- Lord Maxwell Tyrosus
						["maps"] = { LEGION_DALARAN },
					}),
					q(40408, {	-- Weapons of Legend
						["sourceQuests"] = { 38710 },	-- An Urgent Gathering
						["provider"] = { "n", 90369 },	-- Lord Maxwell Tyrosus
						["coord"] = { 74.8, 48.2, LEGION_DALARAN },
					}),
					q(44063, {	-- Bolstering Your Arsenal
						["sourceQuests"] = { 39756 },	-- A Sound Plan
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
					}),
					q(44370, {	-- Completing Your Arsenal
						["sourceQuests"] = { 42120 },	-- The Silver Hand
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
					}),
					cl(PALADIN, HOLY, {
						q(42231, {	-- The Mysterious Paladin
							["sourceQuests"] = {
								40408,	-- Weapons of Legend
								44063,	-- Bolstering Your Arsenal
								44370,	-- Completing Your Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
							["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
						}),
						q(42120, {	-- The Silver Hand
							["sourceQuests"] = { 42377 },	-- The Brother's Trail
							["provider"] = { "n", 106337 },	-- Travard
							["coord"] = { 72.0, 49.3, LEGION_DALARAN },
							["g"] = {
								i(173523),	-- Tirisfal Camp Scroll (QI!)
							},
						}),
					}),
					cl(PALADIN, PROTECTION, {
						q(42000, {	-- Seeker of Truth
							["sourceQuests"] = {
								40408,	-- Weapons of Legend
								44063,	-- Bolstering Your Arsenal
								44370,	-- Completing Your Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 90259 },	-- Lord Maxwell Tyrosus
								{ "n", 90369 },	-- Lord Maxwell Tyrosus
							},
							["coord"] = { 74.8, 48.2, LEGION_DALARAN },
						}),
						q(42002, {	-- To Northrend
							["sourceQuests"] = { 42000 },	-- Seeker of Truth
							["provider"] = { "n", 105689 },	-- Orik Trueheart
							["coord"] = { 73.9, 49.0, LEGION_DALARAN },
						}),
						q(42005, {	-- The End of the Saga
							["sourceQuests"] = { 42002 }, -- To Northrend
							["provider"] = { "n", 105724 },	-- Orik Trueheart
							["coord"] = { 56.8, 78.7, HOWLING_FJORD },
						}),
						q(42017, {	-- Shrine of the Truthguard
							["sourceQuests"] = { 42005 },	-- The End of the Saga
							["provider"] = { "n", 105813 },	-- Orik Trueheart
							["coord"] = { 73.9, 49.0, LEGION_DALARAN },
						}),
					}),
					cl(PALADIN, RETRIBUTION, {
						q(42770, {	-- Seeking Guidance
							["sourceQuests"] = {
								40408,	-- Weapons of Legend
								44063,	-- Bolstering Your Arsenal
								44370,	-- Completing Your Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
							["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
							["g"] = {
								i(173537, {	-- Glowing Hearthstone (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(42772, {	-- Sacred Ground
							["sourceQuests"] = { 42770 },	-- Seeking Guidance
							["provider"] = { "n", 108777 },	-- High Priest Thel'danis
							["coord"] = { 51.4, 79.0, WESTERN_PLAGUELANDS },
						}),
						q(42771, {	-- Keeping the Peace
							["sourceQuests"] = { 42770 },	-- Seeking Guidance
							["provider"] = { "n", 108778 },	-- Mehlar Dawnblade
							["coord"] = { 51.3, 79.0, WESTERN_PLAGUELANDS },
						}),
						q(42773, {	-- The Light Reveals
							["sourceQuests"] = { 42771 },	-- Keeping the Peace
							["provider"] = { "n", 108776 },	-- Lord Maxwell Tyrosus
							["coord"] = { 51.6, 81.9, WESTERN_PLAGUELANDS },
						}),
						q(42774, {	-- Hope Prevails
							["sourceQuests"] = { 42773 },	-- The Light Reveals
							["provider"] = { "n", 108776 },	-- Lord Maxwell Tyrosus
							["coord"] = { 52.1, 83.2, WESTERN_PLAGUELANDS },
							["g"] = {
								i(173538, {	-- Hippogryph Whistle (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(38376, {	-- The Search for the Highlord
							["sourceQuests"] = { 42774 },	-- Hope Prevails
							["provider"] = { "n", 90369 },	-- Lord Maxwell Tyrosus
							["coord"] = { 74.3, 53.2, EASTERN_PLAGUELANDS },
						}),
					}),
					q(38576, {	-- We Meet at Light's Hope
						["sourceQuests"] = { 42017 },	-- Shrine of the Truthguard
						["providers"] = {
							{ "n", 106209 },	-- Lord Maxwell Tyrosus
							{ "n", 106834 },	-- Lord Maxwell Tyrosus
						},
						["coord"] = { 71.7, 45.1, LEGION_DALARAN },
					}),
					q(42811, {	-- We Meet at Light's Hope
						["sourceQuests"] = { 38376 },	-- The Search for the Highlord
						["provider"] = { "n", 91144 },	-- Lord Maxwell Tyrosus
						["coord"] = { 20.4, 61.4, BROKEN_SHORE },
					}),
					q(42812),	-- Paladin Order Hall - We Meet at Light's Hope. Triggered together with 42811 version
					q(38566, {	-- A United Force
						["sourceQuests"] = {
							38576,	-- We Meet at Light's Hope
							42811,	-- We Meet at Light's Hope
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 100031 },	-- Lord Maxwell Tyrosus
						["coord"] = { 63.0, 37.2, SANCTUM_OF_LIGHT },
					}),
					q(44250, {	-- Champion of the Light
						["sourceQuests"] = { 38566 },	-- A United Force
						["provider"] = { "n", 100196 },	-- Eadric the Pure
						["coord"] = { 41.4, 61.1, SANCTUM_OF_LIGHT },
						["g"] = {
							i(139693),	-- Crown of the Silver Hand
						},
					}),
					q(39722, {	-- Forging New Strength
						["u"] = REMOVED_FROM_GAME,
					}),
					q(38933, {	-- Logistical Matters
						["sourceQuests"] = { 38566 },	-- A United Force
						["provider"] = { "n", 100031 },	-- Lord Maxwell Tyrosus
						["coord"] = { 73.7, 19.6, SANCTUM_OF_LIGHT },
					}),
					-- Zone
					q(39756, {	-- A Sound Plan
						["sourceQuests"] = { 38933 },	-- Logistical Matters
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					-- Bla
					q(39696, {	-- Rise, Champions
						["sourceQuests"] = { 39756 },	-- A Sound Plan
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
						["g"] = {
							follower(480),	-- Lord Maxwell Tyrosus
						},
					}),
					q(42846, {	-- The Blood Matriarch
						["sourceQuests"] = { 39696 },	-- Rise, Champions
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
					}),
					q(42881, {	-- Champion: Lady Liadrin
						["sourceQuests"] = { 42846 },	-- The Blood Matriarch
						["provider"] = { "n", 92346 },		-- Lady Liadrin <Blood Knight Matriarch>
						["coord"] = { 38.2, 64.6, SANCTUM_OF_LIGHT },
						["g"] = {
							follower(478),	-- Lady Liadrin
						},
					}),
					q(42847, {	-- Dark Storms
						["sourceQuests"] = { 42846 },	-- The Blood Matriarch
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					q(42848, {	-- Recruiting the Troops
						["sourceQuests"] = { 42847 },	-- Dark Storms
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					q(42849, {	-- Wrath and Justice
						["sourceQuests"] = { 42848 },	-- Recruiting the Troops
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					q(42850, {	-- Tech It Up a Notch
						["sourceQuests"] = { 42849 },	-- Wrath and Justice
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					q(42866, {	-- A Sign From The Sky
						--["sourceQuests"] = { 42847 },	-- Dark Storms
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
					}),
					q(42867, {	-- Meeting of the Silver Hand
						["sourceQuests"] = { 44153 },	-- Light's Charge
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, SANCTUM_OF_LIGHT },
					}),
					q(42919, {	-- The Scion's Legacy
						["sourceQuests"] = { 42867 },	-- Meeting of the Silver Hand
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 49.8, 72.4, SANCTUM_OF_LIGHT },
					}),
					q(42885, {	-- The Highlord's Command
						["sourceQuests"] = { 42919 },	-- The Scion's Legacy
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 50.8, 70.9, SANCTUM_OF_LIGHT },
					}),
					q(42966, {	-- The Highlord's Command
						["sourceQuests"] = { 42919 },	-- The Scion's Legacy
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 50.8, 70.9, SANCTUM_OF_LIGHT },
					}),
					q(42967, {	-- The Highlord's Command
						["sourceQuests"] = { 42919 },	-- The Scion's Legacy
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 50.8, 70.9, SANCTUM_OF_LIGHT },
					}),
					q(42968, {	-- The Highlord's Command
						["sourceQuests"] = { 42919 },	-- The Scion's Legacy
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 50.8, 70.9, SANCTUM_OF_LIGHT },
					}),
					q(42886, {	-- To Faronaar
						["sourceQuests"] = {
							42885,	-- The Highlord's Command
							42966,	-- The Highlord's Command
							42967,	-- The Highlord's Command
							42968,	-- The Highlord's Command
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(42887, {	-- This Is Retribution
						["sourceQuests"] = { 42886 },	-- To Faronaar
						["provider"] = { "n", 109356 },	-- Vindicator Boros
						["coord"] = { 45.9, 51.6, AZSUNA },
					}),
					q(43462, {	-- Mother Ozram
						["sourceQuests"] = { 42887 },	-- This Is Retribution
						["provider"] = { "n", 109384 },	-- Justicar Julia Celeste
						["coord"] = { 30.6, 44.9, AZSUNA },
					}),
					q(42888, {	-- Communication Orbs
						["sourceQuests"] = { 42887 },	-- This Is Retribution
						["provider"] = { "n", 109384 },	-- Justicar Julia Celeste
						["coord"] = { 30.6, 44.9, AZSUNA },
					}),
					q(42890, {	-- The Codex of Command
						["sourceQuests"] = {
							43462,	-- Mother Ozram
							42888,	-- Communication Orbs
						},
						["provider"] = { "n", 109434 },	-- Justicar Julia Celeste
						["maps"] = { AZSUNA },
						["g"] = {},	-- First order campaign
					}),
					q(42852, {	-- Champion: Justicar Julia Celeste
						["sourceQuests"] = { 42890 },	-- The Codex of Command
						["provider"] = { "n", 99995 },	-- Justicar Julia Celeste
						["coord"] = { 50.2, 72.8, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(755),	-- Justicar Julia Celeste
						},
					}),
					q(42851, {	-- Champion: Vindicator Boros
						["sourceQuests"] = { 42890 },	-- The Codex of Command
						["provider"] = { "n", 94175 },		-- Vindicator Boros <Triumvirate of the Hand>
						["coord"] = { 49.3, 71.5, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(479),	-- Vindicator Boros
						},
					}),
					q(43494, {	-- Silver Hand Knights
						["sourceQuests"] = { 42890 },	-- The Codex of Command
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					--
					q(43486, {	-- Cracking the Codex
						["sourceQuests"] = {
							42851,	-- Champion: Vindicator Boros
							42852,	-- Champion: Justicar Julia Celeste
						},
						["provider"] = { "n", 90251 },	-- Aponi Brightmane
						["coord"] = { 48.4, 72.8, LIGHTS_HOPE_CHAPEL },
					}),
					q(49812, {	-- Delas in Dalaran
						["provider"] = { "n", 90251 },	-- Aponi Brightmane
						["sourceQuests"] = { 43486 },	-- Cracking the Codex
						["coord"] = { 48.4, 72.8, LIGHTS_HOPE_CHAPEL },
						["description"] = "Complete Cracking the Codex (43486) and don't accept the next quest. Go back to Aponi instead.",
						["isBreadcrumb"] = true,
					}),
					q(43487, {	-- Assault on Violet Hold: The Fel Lexicon
						--["sourceQuests"] = { 43486 },	-- Cracking the Codex
						["provider"] = { "n", 110571 },	-- Delas Moonfang
						["coord"] = { 44.6, 23.1, LEGION_DALARAN },
					}),
					q(43488, {	-- Blood of Our Enemy
						--["sourceQuests"] = { 43486 },	-- Cracking the Codex
						["provider"] = { "n", 110571 },	-- Delas Moonfang
						["coord"] = { 44.6, 23.1, LEGION_DALARAN },
					}),
					q(43535, {	-- Translation: Danger!
						["sourceQuests"] = {
							43487,	-- Assault on Violet Hold: The Fel Lexicon
							43488,	-- Blood of Our Enemy
						},
						["provider"] = { "n", 110571 },	-- Delas Moonfang
						["coord"] = { 44.6, 23.1, LEGION_DALARAN },
					}),
					q(43493, {	-- Black Rook Hold: Lord Ravencrest
						["sourceQuests"] = { 43535 },	-- Translation: Danger!
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43489, {	-- To Felblaze Ingress
						["sourceQuests"] = { 43493 },	-- Black Rook Hold: Lord Ravencrest
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43490, {	-- Aponi's Trail
						["sourceQuests"] = { 43489 },	-- To Felblaze Ingress
						["provider"] = { "o", 252232 },	-- Aponi's Libram
						["coord"] = { 66.2, 26.1, AZSUNA },
						["maps"] = { 748 },	-- Niskara (Scenario Map)
					}),
					q(43540, {	-- The Mind of the Enemy
						["sourceQuests"] = { 43490 },	-- Aponi's Trail
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["coord"] = { 48.9, 63.7, 748 },
					}),
					q(43491, {	-- Allies of the Light
						["sourceQuests"] = { 43490 },	-- Aponi's Trail
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["coord"] = { 48.9, 63.7, 748 },
					}),
					q(43541, {	-- United As One
						["sourceQuests"] = {
							43491,	-- Allies of the Light
							43540,	-- The Mind of the Enemy
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							i(139697),	-- Bindings of the Silver Hand
						},
					}),
					q(43492, {	-- Champion: Aponi Brightmane
						["sourceQuests"] = { 43541 },	-- United As One
						["provider"] = { "n", 90251 },		-- Aponi Brightmane <Sunwalker Chieftain>
						["coord"] = { 48.3, 72.4, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(757),	-- Aponi Brightmane
						},
					}),
					q(43934, {	-- A New Path
						["sourceQuests"] = { 43541 },	-- United As One
						["provider"] = { "n", 110866 },	-- Delas Moonfang
						["coord"] = { 48.5, 71.3, LIGHTS_HOPE_CHAPEL },
					}),
					q(43933, {	-- Champion: Delas Moonfang
						["sourceQuests"] = { 43934 },	-- A New Path
						["provider"] = { "n", 113299 },	-- Delas Moonfang
						["coord"] = { 71.9, 24.4, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(756),	-- Delas Moonfang
						},
					}),
					-- Chap
					q(43534, {	-- Blood of Sargeras
						["sourceQuests"] = {
							43492,	-- Champion: Aponi Brightmane
							43933,	-- Champion: Delas Moonfang
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43698, {	-- Lumenstone
						["sourceQuests"] = {
							43492,	-- Champion: Aponi Brightmane
							43933,	-- Champion: Delas Moonfang
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43699, {	-- Defenders of the World
						["sourceQuests"] = {
							43492,	-- Champion: Aponi Brightmane
							43933,	-- Champion: Delas Moonfang
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43700, {	-- A Light in the Darkness
						["sourceQuests"] = {
							43699,	-- Defenders of the World
							43698,	-- Lumenstone
						},
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
						["maps"] = { NETHERLIGHT_TEMPLE },
					}),
					q(43697, {	-- Warriors of Light
						["sourceQuests"] = { 43700 },	-- A Light in the Darkness
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 72.6, 25.8, BROKEN_SHORE },
						["g"] = {
							i(139690),	-- Breastplate of the Silver Hand
							title(345),	-- Highlord <Name>
						},
					}),
					q(43785, {	-- Champion: Arator the Redeemer
						["sourceQuests"] = { 43697 },	-- Warriors of Light
						["provider"] = { "n", 99997 },		-- Arator the Redeemer
						["coord"] = { 71.6, 23.7, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(758),	-- Arator the Redeemer
						},
					}),
					q(43701, {	-- Champion: Lothraxion
						["sourceQuests"] = { 43697 },	-- Warriors of Light
						["provider"] = { "n", 109105 },	-- Lothraxion <High Commander>
						["coord"] = { 73.1, 23.5, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							follower(759),	-- Lothraxion
						},
					}),
					q(43424, {	-- A Hero's Weapon
						["sourceQuests"] = { 43697 },	-- Warriors of Light
						["provider"] = { "n", 90259 },	-- Lord Maxwell Tyrosus
						["coord"] = { 72.6, 25.8, LIGHTS_HOPE_CHAPEL },
					}),
					-- Interlude
					q(45974, {	-- An Urgent Warning
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(45975, {	-- Investigate the Broken Shore
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					-- 7.2.0
					q(45143, {	-- Judgement Awaits
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						["provider"] = { "n", 90249 },	-- Lady Liadrin
						["coord"] = { 50.3, 74.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(45890, {	-- Ancestors and Enemies
						["sourceQuests"] = { 45143 },	-- Judgment Awaits
						["provider"] = { "n", 109102 },	-- Delas Moonfang
						["coord"] = { 59.1, 32.6, LIGHTS_HOPE_CHAPEL },
					}),
					q(46259, {	-- Darkbinder Dilemma
						["sourceQuests"] = { 45890 },	-- Ancestors and Enemies
						["provider"] = { "n", 119209 },	-- Erelyn Moonfang
						["coord"] = { 66.8, 53.4, VALSHARAH },
					}),
					q(45145, {	-- Moonfang Family Relics
						["sourceQuests"] = { 46259 },	-- Darkbinder Dilemma
						["provider"] = { "n", 119209 },	-- Erelyn Moonfang
						["coord"] = { 66.8, 53.4, VALSHARAH },
					}),
					q(45146, {	-- Runic Reading
						["sourceQuests"] = { 45145 },	-- Moonfang Family Relics
						["provider"] = { "n", 109102 },	-- Delas Moonfang
						["coord"] = { 59.1, 32.6, LIGHTS_HOPE_CHAPEL },
					}),
					q(45147, {	-- Felstone Destruction
						["sourceQuests"] = { 45146 },	-- Runic Reading
						["provider"] = { "n", 109102 },	-- Delas Moonfang
						["coord"] = { 59.1, 32.6, LIGHTS_HOPE_CHAPEL },
					}),
					q(45148, {	-- Oath Breaker
						["sourceQuests"] = { 45147 },	-- Felstone Destruction
						["provider"] = { "n", 119545 },	-- Nerus Moonfang
						["coord"] = { 58.9, 31.9, LIGHTS_HOPE_CHAPEL },
					}),
					q(45149, {	-- Ending the Crescent Curse
						["sourceQuests"] = { 45147 },	-- Felstone Destruction
						["provider"] = { "n", 119545 },	-- Nerus Moonfang
						["coord"] = { 58.9, 31.9, LIGHTS_HOPE_CHAPEL },
					}),
					q(46045, {	-- Champion: Nerus Moonfang
						["sourceQuests"] = {
							45149,	-- Ending the Crescent Curse
							45148,	-- Oath Breaker
						},
						["provider"] = { "n", 119545 },	-- Nerus Moonfang
						["g"] = {
							follower(1000),	-- Nerus Moonfang
						},
					}),
					q(46069, {	-- Worthy of the Title
						["sourceQuests"] = { 46045 },	-- Champion: Nerus Moonfang
						["provider"] = { "n", 118376 },	-- Champion Cyssa Dawnrose
						["coord"] = { 43.8, 63.0, BROKEN_SHORE },
					}),
					q(46070, {	-- Preparations Underway
						["sourceQuests"] = { 46069 },	-- Worthy of the Title
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
						["cost"] = { { "i", 131746, 1 } },	-- Stonehide Leather Barding
					}),
					q(46071, {	-- The Hammer of Dalaran
						["sourceQuests"] = { 46070 },	-- Preparations Underway
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(46083, {	-- A Few Things First
						["sourceQuests"] = { 46071 },	-- The Hammer of Dalaran
						["provider"] = { "n", 92183 },	-- Alard Schmied
						["coord"] = { 45.0, 29.6, LEGION_DALARAN },
						["cost"] = {
							{ "i", 123918, 25 },	-- Leystone Ore x25
							{ "i", 147768, 1 },		-- Suramarian Sapphire
						},
					}),



					q(45645, {	-- A Fool's Errand
						["sourceQuests"] = { 45644 },	-- Oh Doloria, My Sweet Doloria
						["provider"] = { "n", 117438 },	-- Doloria
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 48.2, 41.0, LEGION_DALARAN },
						["g"] = {
							i(143845),	-- "Jewelry" (QI!)
						},
					}),
					q(45566, {	-- A Knight's Belongings
						["sourceQuests"] = { 45562 },	-- Kneel and Be Squired!
						["provider"] = { "n", 117226 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(44220, {	-- Blessing of the Order
						["u"] = REMOVED_FROM_GAME,
					}),
					q(45565, {	-- Further Training
						["sourceQuests"] = { 45562 },	-- Kneel and Be Squired!
						["provider"] = { "n", 117226 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(42844, {	-- Growing Power
						["provider"] = { "n", 112701 },	-- Justicar Julia Celeste
						["isBreadcrumb"] = true,
					}),
					q(45562, {	-- Kneel and Be Squired!
						["sourceQuests"] = { 45561 },	-- Seek Me Out
						["provider"] = { "n", 117226 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(46074, {	-- Leather to Legendary
						["sourceQuests"] = { 46083 },	-- A Few Things First
						["provider"] = { "n", 92183 },	-- Alard Schmied
						["coord"] = { 45.0, 29.6, LEGION_DALARAN },
					}),
					q(45567, {	-- My Kingdom for a Horse
						["sourceQuests"] = { 45562 },	-- Kneel and Be Squired!
						["provider"] = { "n", 117226 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(45644, {	-- Oh Doloria, My Sweet Doloria
						["sourceQuests"] = {
							45565,	-- Further Training
							45566,	-- A Knight's Belongings
							45567,	-- My Kingdom For a Horse
							45568,	-- They Stole Excaliberto!
						},
						["provider"] = { "n", 118009 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(45561, {	-- Seek Me Out
						["description"] = "This quest will only trigger if you've already recruited |cffffff00Nerus Moonfang|r as a follower, as well as completing the Maximillian of Northshire quest chain in Un'Goro Crater starting with |cffffff00An Important Lesson|r. Once both of those criteria are met, you should receive mail the next time you enter your Order Hall which grants you the item to start this quest chain.",
						["sourceQuests"] = {
							24707,	-- The Ballad of Maximillian
							46045,	-- Champion: Nerus Moonfang
						},
						["provider"] = { "i", 143900 },	-- Letter from Maximillian
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
					}),
					q(45770, {	-- Stirring in the Shadows
						["sourceQuests"] = { 46074 },	-- Leather to Legendary
						["provider"] = { "n", 90250 },	-- Lord Grayson Shadowbreaker <Mission Specialist>
						["coord"] = { 52.3, 78.1, LIGHTS_HOPE_CHAPEL },
						["g"] = {
							mount(231435),	-- Highlord's Golden Charger (MOUNT!)
						},
					}),
					q(42377, {	-- The Brother's Trail
						["sourceQuests"] = { 42231 },	-- The Mysterious Paladin
						["provider"] = { "n", 106337 },	-- Travard
						["coord"] = { 72.0, 49.3, LEGION_DALARAN },
					}),
					q(45568, {	-- They Stole Excaliberto!
						["sourceQuests"] = { 45562 },	-- Kneel and Be Squired
						["provider"] = { "n", 117226 },	-- Maximillian of Northshire
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["coord"] = { 55.8, 16.2, HIGHMOUNTAIN },
					}),
					q(45813, {	-- Where Art Thou, My Sweet
						["sourceQuests"] = { 45645 },	-- A Fool's Errand
						["provider"] = { "n", 118088 },	-- Maximillian of Northshire <Knight-Errant>
						["maps"] = { LEGION_DALARAN },
						["_drop"] = { "classes", "c" }, -- Hide classes Blizz API insists can get the quest
						["classes"] = { PALADIN },
						["g"] = {
							follower(1001),	-- Maximillian of Northshire
						},
					}),
					q(46151, {	-- Furthering Knowledge
						["u"] = REMOVED_FROM_GAME,
					}),
					q(43883, {	-- Hitting the Books
						["u"] = REMOVED_FROM_GAME,
					}),
					q(46132, {	-- Knowledge is Power
						["u"] = REMOVED_FROM_GAME,
					}),
				}),
				n(SPECIAL, {
					gt(398, {	-- Holy Purpose
						q(44219, {	-- Fate's Blessing
							["provider"] = { "n", 112986 },	-- Librarian Lightmorne
							["coord"] = { 48.9, 76.2, LIGHTS_HOPE_CHAPEL },
							["description"] = "Only available if you have the |cFFFFD700Holy Purpose|r order hall upgrade.",
						}),
					}),
					gt(400, {	-- Plowshares to Swords
						q(44218, {	-- Champion Armaments
							["provider"] = { "n", 110434 },	-- Kristoff
							["coord"] = { 54.1, 49.8, LIGHTS_HOPE_CHAPEL },
							["description"] = "Only available if you have the |cFFFFD700Plowshares to Swords|r order hall upgrade.",
						}),
					}),
				}),
				n(VENDORS, {
					n(99976, {	--  Crusader Lord Dalfors
						["description"] = "|c808080FAThese mounts are only available to paladins who have completed|r |cFFFFD700Stirring in the Shadows|r |c808080FAquest from the class mount campaign.",
						["sourceQuest"] = 45770,	-- Stirring in the Shadows
						["g"] = {
							i(153177, {	-- Golden Charger's Birdle
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(143503, {	-- Highlord's Vengeful Charger (MOUNT!)
										["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
							}),
							i(143505, {	-- Highlord's Valorous Charger (MOUNT!)
										["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
							}),
							i(143504, {	-- Highlord's Vigilant Charger (MOUNT!)
										["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
							}),
							i(153174, {	-- Valorous Charger's Bridle
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(153175, {	-- Vengeful Charger's Bridle
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(153176, {	-- Vigilant Charger's Bridle
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
						},
					}),
					n(100196, {	-- Eadric the Pure <Quartermaster>
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(139697, {	-- Bindings of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(140555),	-- Blade of the Silver Hand
							i(139690, {	-- Breastplate of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(140535),	-- Bulwark of the Silver hand
							i(139693, {	-- Crown of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(136801),	-- Divine Tome: Contemplation (CI!)
							i(139692, {	-- Gauntlets of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(139696, {	-- Girdle of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(140558),	-- Greatsword of the Silver Hand
							i(140941, {	-- Highlord's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140975, {	-- Highlord's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140974, {	-- Highlord's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139694, {	-- Legplates of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(139691, {	-- Sabatons of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(139695, {	-- Spaulders of the Silver Hand
								["cost"] = 5000000,	-- 500g
							}),
							i(140547),	-- Warhammer of the Silver Hand
						},
					}),
					n(91190, {	-- Sister Elda <Keeper of the Ancient Tomes>
						["description"] = "Your spec must be Retribution for her to respond to your books. Bring both of the books to her and she'll give you the completed book to use in the next part.",
						["g"] = {
							i(139620, {	-- A Complete Copy of "Nat Pagle's Guide to Extreme Anglin'."
								["cost"] = {
									{ "i", 18365, 1 },	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
									{ "i", 18229, 1 },	-- Nat Pagle's Guide to Extreme Anglin'
								},
							}),
						},
					}),
				}),
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
		q(43578),	-- Looted Paladin Daily Mount
		q(46767),	-- Maximillian 1 Week Cooldown - triggered after turning in "Champion: Nerus Moonfang" (questID 46045)
		q(43688),	-- Shard Delivered - unlocking the Walking in the Shadows quest
		q(44426),	-- Talking Pair Flavor Heard - triggered after Silver Hand Protector said "All the world's paladins united under one..." in the paladin order hall
		q(44458),	-- Tracking Quest: Blood of Our Enemy 1 - completed the "Blood of Our Enemy: Stormheim" mission
		q(44459),	-- Tracking Quest: Blood of Our Enemy 2 - completed the "Blood of Our Enemy: Val'sharah" mission
		q(44460),	-- Tracking Quest: Blood of Our Enemy 3 - completed the "Blood of Our Enemy: Highmountain" mission
		q(44461),	-- Tracking Quest: Blood of Our Enemy 4 - completed the "Blood of Our Enemy: Azsuna" mission
		q(44462),	-- Tracking Quest: Blood of Our Enemy 5 - completed the "Blood of Our Enemy: Suramar" mission
		q(42136),	-- Tracking Quest: Chose Strategy A - choice for "The Scion's Legacy" (questID 42919)
		q(42960),	-- Tracking Quest: Chose Strategy B - choice for "The Scion's Legacy" (questID 42919)
		q(42135),	-- Tracking Quest: Chose Strategy C - choice for "The Scion's Legacy" (questID 42919)
		q(42961),	-- Tracking Quest: Chose Strategy D - choice for "The Scion's Legacy" (questID 42919)
		q(43696),	-- Tracking Quest: Lumenstone 1 - completed the "Lumenstone: Faronaar" mission
		q(42980),	-- Tracking Quest: Lumenstone 2 - completed the "Lumenstone: Suramar City" mission
		q(42352),	-- Tracking Quest: Lumenstone 3 - completed the "Lumenstone: Stormheim" mission
		q(42353),	-- Tracking Quest: Lumenstone 4 - completed the "Lumenstone: Broken Shore" mission
		q(42354),	-- Tracking Quest: Lumenstone 5 - completed the "Lumenstone: Val'sharah" mission
		q(38229),	-- Triggered after recruiting Lord Maxwell Tyrosus for paladin order hall
	}),
});