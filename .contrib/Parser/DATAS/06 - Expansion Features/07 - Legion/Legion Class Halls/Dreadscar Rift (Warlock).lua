-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
			["maps"] = { DREADSCAR_RIFT },
			["g"] = {
				n(ARTIFACTS, {
					cl(WARLOCK, AFFLICTION, {
						i(140764, {	-- Grimoire of the First Necrolyte
							["description"] = "Any demon can drop this.",
						}),
						q(44083, {	-- The Grimoire of the First Necrolyte
							["description"] = "Only available from rare elite WQs.",
							["provider"] = { "i", 140764 },	-- Grimoire of the First Necrolyte
						}),
						n(112862, {	-- Sataiel
							["sourceQuest"] = 44083,	-- The Grimoire of the First Necrolyte
							["coord"] = { 38.6, 73.8, DEADWIND_PASS },
							["g"] = {
								i(139575, {	-- Essence of the Executioner
									artifact(328),	-- Ulthalesh, the Deadwind Harvester
								}),
							},
						}),
					}),
					cl(WARLOCK, DEMONOLOGY, {
						["description"] = "The heads can drop from any Eredar. Keep killing them until you unlock the hidden appearance.",
						["g"] = {
							i(140661),	-- Damaged Eredar Head
							i(140662),	-- Deformed Eredar Head
							i(140663),	-- Malformed Eredar Head
							i(140664),	-- Deficient Eredar Head
							i(140665),	-- Nearly Satisfactory Eredar Head
							hqt(44093, name(HEADERS.Item, 140661, {	-- Damaged Eredar Head
								["provider"] = {"i",140661},	-- Damaged Eredar Head
							})),
							hqt(44094, name(HEADERS.Item, 140662, {	-- Deformed Eredar Head
								["sourceQuests"] = { 44093 },	-- Damaged Eredar Head
								["provider"] = {"i",140662},	-- Deformed Eredar Head
							})),
							hqt(44095, name(HEADERS.Item, 140663, {	-- Malformed Eredar Head
								["sourceQuests"] = { 44094 },	-- Deformed Eredar Head
								["provider"] = {"i",140663},	-- Malformed Eredar Head
							})),
							hqt(44096, name(HEADERS.Item, 140664, {	-- Deficient Eredar Head
								["sourceQuests"] = { 44095 },	-- Malformed Eredar Head
								["provider"] = {"i",140664},	-- Deficient Eredar Head
							})),
							hqt(44097, name(HEADERS.Item, 140665, {	-- Nearly Satisfactory Eredar Head
								["sourceQuests"] = { 44096 },	-- Deficient Eredar Head
								["provider"] = {"i",140665},	-- Nearly Satisfactory Eredar Head
							})),
							i(139576, {	-- Visage of the First Wakener
								["sourceQuests"] = { 44097 },	-- Nearly Satisfactory Eredar Head
								["g"] = {
									artifact(937),	-- Skull of the Man'ari
									artifact(937),	-- Spine of Thal'kiel
								},
							}),
						},
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(729),	-- Black Harvest Acolytes
					follower(730),	-- Black Harvest Acolytes
					follower(740),	-- Black Harvest Acolytes
					follower(741),	-- Black Harvest Acolytes
					follower(764),	-- Black Harvest Invokers
					follower(765),	-- Black Harvest Invokers
					follower(766),	-- Black Harvest Invokers
					follower(767),	-- Black Harvest Invokers
					follower(1035),	-- Felguard Brutes
					follower(1036),	-- Felguard Brutes
					follower(1037),	-- Felguard Brutes
					follower(1038),	-- Felguard Brutes
					follower(649),	-- Pack of Imps
					follower(727),	-- Pack of Imps
					follower(728),	-- Pack of Imps
					follower(734),	-- Pack of Imps
					follower(735),	-- Swarm of Wild Imps
					follower(736),	-- Swarm of Wild Imps
					follower(737),	-- Swarm of Wild Imps
					follower(738),	-- Swarm of Wild Imps
				})),
				n(QUESTS, {
					q(40716, {	-- The Sixth
						["provider"] = { "n", 103506 },	-- Ritssyn Flamescowl
						["maps"] = { LEGION_DALARAN, LEGION_THE_UNDERBELLY },
					}),
					q(40729, {	-- The New Blood
						["sourceQuests"] = { 40716 },	-- The Sixth
						["provider"] = { "n", 101456 },	-- Ritssyn Flamescowl
						["coord"] = { 57.3, 60.8, LEGION_THE_UNDERBELLY },
						["maps"] = { 718 },	-- Dreadscar Rift (Scenario Map)
					}),
					-- Artifact
					q(40684, {	-- The Tome of Blighted Implements
						["sourceQuests"] = {
								40729,	-- The New Blood
							},
						["provider"] = { "n", 101097 },	-- Calydus
						["description"] = "You must complete the Affliction quest line BEFORE completing the Demonology quest line to obtain certain breadcrumb quests.",
						["coord"] = { 56.3, 65.0, LEGION_THE_UNDERBELLY },
					}),
					q(43984, {	-- The Tome Opens Again
						["sourceQuests"] = { 40684 },	-- The Tome of Blighted Implements
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
					}),
					q(44089, {	-- A Greater Arsenal
						["sourceQuests"] = { 43984 },	-- The Tome Opens Again
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.6, 31.9, DREADSCAR_RIFT },
					}),
					cl(WARLOCK, AFFLICTION, {
						q(40495, {	-- Ulthalesh, the Deadwind Harvester
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 101097 },	-- Calydus
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
							["g"] = {
								i(173527, {	-- Duskwood Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(40588, {	-- Following the Curse
							["sourceQuest"] = 40495,	-- Ulthalesh, the Deadwind Harvester
							["provider"] = { "n", 100323 },	-- Revil Kost
							["coord"] = { 77.4, 36.1, DUSKWOOD },
						}),
						q(40604, {	-- Disturbing the Past
							["sourceQuest"] = 40588,	-- Following the Curse
							["provider"] = { "n", 100729 },	-- Revil Kost
							["coord"] = { 52.3, 34.5, DEADWIND_PASS },
						}),
						q(40606, {	-- To Point the Way
							["sourceQuests"] = { 40604 },	-- Disturbing the Past
							["provider"] = { "o", 245793 },	-- Battered Journal
							["coord"] = { 52.3, 33.9, DEADWIND_PASS },
							["icon"] = 953644,
						}),
						q(40611, {	-- The Fate of Deadwind
							["sourceQuests"] = { 40606 },	-- To Point the Way
							["provider"] = { "n", 100729 },	-- Revil Kost
							["coord"] = { 52.3, 34.4, DEADWIND_PASS },
						}),
						q(40623, {	-- The Dark Riders (Good)
							["description"] = "Obtainable if you are good to Revil Kost",
							["sourceQuests"] = { 40611 },	-- The Fate of Deadwind
							["provider"] = { "n", 100812 },	-- Revil Kost
							["coord"] = { 49.4, 74.8, DEADWIND_PASS },
							["g"] = {
								i(128942, {	-- Ulthalesh, the Deadwind Harvester
									artifact(294),	-- Ulthalesh, the Deadwind Harvester
								}),
							},
						}),
						q(41155, {	-- The Dark Riders (Bad)
							["description"] = "Obtainable if you attack Revil Kost",
							["sourceQuests"] = { 40611 },	-- The Fate of Deadwind
							["provider"] = { "n", 100812 },	-- Revil Kost
							["coord"] = { 49.4, 74.8, DEADWIND_PASS },
							["g"] = {
								i(128942, {	-- Ulthalesh, the Deadwind Harvester
									artifact(294),	-- Ulthalesh, the Deadwind Harvester
								}),
							},
						}),
						q(40712, {	-- The Power Possessed (Good)
							["description"] = "Obtainable if you are good to Revil Kost. This quest cross completes with 41156, and is unobtainable if you complete the Demonology artifact weapon before Affliction.",
							["sourceQuests"] = { 40623 },	-- The Dark Riders (Good)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["coord"] = { 68.5, 28.7, 46 },	-- Karazhan Catacombs
							["isBreadcrumb"] = true,
						}),
						q(41156, {	-- The Power Possessed (Bad)
							["description"] = "Obtainable if you attack Revil Kost. This quest cross completes with 40712, and is unobtainable if you complete the Demonology artifact weapon before Affliction.",
							["sourceQuests"] = { 41155 },	-- The Dark Riders (Bad)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["coord"] = { 68.5, 28.7, 46 },	-- Karazhan Catacombs
							["isBreadcrumb"] = true,
						}),
					}),
					cl(WARLOCK, DEMONOLOGY, {
						q(42128, {	-- Ritual Reagents
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 101097 },	-- Calydus
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
						}),
						q(42168, {	-- Looking into the Darkness
							["sourceQuests"] = { 42128 },	-- Ritual Reagents
							["provider"] = { "n", 106610 },	-- Calydus
							["coord"] = { 54.0, 47.0, LEGION_DALARAN },
						}),
						q(42125, {	-- Dark Whispers
							["sourceQuests"] = { 42168 },	-- Looking into the Darkness
							["provider"] = { "n", 106610 },	-- Calydus
							["coord"] = { 54.0, 47.0, LEGION_DALARAN },
							["g"] = {
								i(128943, {	-- Skull of the Man'ari
									artifact(811),	-- Skull of the Man'ari
								}),
								i(137246, {	-- Spine of Thal'kiel
									artifact(811),	-- Spine of Thal'kiel
								}),
							},
						}),
					}),
					cl(WARLOCK, DESTRUCTION, {
						q(43100, {	-- Finding the Scepter
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 101097 },	-- Calydus
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
							["g"] = {
								i(139035),	-- Book of Medivh (QI!)
								i(173526, {	-- Caer Darrow Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 }
								}),
							},
						}),
						q(43153, {	-- An Eye for a Scepter
							["sourceQuest"] = 43100,	-- Finding the Scepter
							["provider"] = { "n", 109698 },	-- Calydus
							["coord"] = { 69.2, 79.0, WESTERN_PLAGUELANDS },
							["maps"] = { 773, 774 },	-- Tol Barad (Scenario Map)
						}),
						q(43254, {	-- Ritual Ruination
							["sourceQuests"] = { 43153 },	-- An Eye for a Scepter
							["provider"] = { "n", 109838 },	-- Calydus
							["coord"] = { 73.8, 42.9, LEGION_DALARAN },
							["g"] = {
								i(128941, {	-- Scepter of Sargeras
									artifact(188),	-- Scepter of Sargeras
								}),
							},
						}),
					}),
					-- Introduction
					q(40731, {	-- The Heart of the Dreadscar
						["sourceQuests"] = {
							42125,	-- Dark Whispers
							43254,	-- Ritual Ruination
							41155,	-- The Dark Riders (Bad)
							40623,	-- The Dark Riders (Good)
							40712,	-- The Power Possessed (Good)
							41156,	-- The Power Possessed (Bad)
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 56.4, 65.0, LEGION_THE_UNDERBELLY },
						["maps"] = { 718 },	-- Dreadscar Rift (Scenario Map)
					}),
					q(40821, {	-- Power Overwhelming
						["sourceQuests"] = { 40731 },	-- The Heart of the Dreadscar
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(44254, {	-- Gazing Into Oblivion
						["sourceQuest"] = 40731,	-- The Heart of the Dreadscar
						["provider"] = { "n", 112434 },	-- Gigi Gigavoid
						["coord"] = { 58.7, 32.7, DREADSCAR_RIFT },
						["g"] = {
							i(139765),	-- Visage of the Black Harvest
						},
					}),
					q(40823, {	-- Rebuilding the Council
					-- #if BEFORE 8.0.1
						["sourceQuests"] = { 40821 },	-- Power Overwhelming
						-- #endif
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
					}),
					q(44099, {	-- A Mutual Friend
						["sourceQuests"] = { 40824 },	-- The Path of the Dreadscar
						["provider"] = { "n", 112693 },	-- Black Harvest Acolyte
						["maps"] = { LEGION_THE_UNDERBELLY },
						["isBreadcrumb"] = true,
					}),
					-- Start Legion Zone
					q(40824, {	-- The Path of the Dreadscar
						["sourceQuests"] = { 40823 },	-- Rebuilding the Council
						["provider"] = { "n", 101921 },	-- Ritssyn Flamescowl
						["coord"] = { 31.2, 58.8, DREADSCAR_RIFT },
					}),
					-- Learn Mission Table & Research
					q(42608, {	-- Rise, Champions
						["sourceQuests"] = { 44099 },	-- A Mutual Friend
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.6, 31.8, DREADSCAR_RIFT },
					}),
					q(41750, {	-- Champion: Calydus
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["provider"] = { "n", 101097 },	-- Calydus
						["coord"] = { 37.6, 31.8, DREADSCAR_RIFT },
						["g"] = {
							follower(616),	-- Calydus
						},
					}),
					q(41748, {	-- Champion: Ritssyn Flamescowl
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["coord"] = { 65.4, 47.3, DREADSCAR_RIFT },
						["g"] = {
							follower(589),	-- Ritssyn Flamescowl
						},
					}),
					q(42603, {	-- Information at Any Cost
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(41797, {	-- Recruiting The Troops
						["sourceQuests"] = { 42603 },	-- Information at Any Cost
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(42602, {	-- Troops in the Field
						["sourceQuests"] = { 41797 },	-- Recruiting The Troops
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(42601, {	-- Tech It Up A Notch
						["sourceQuests"] = { 42602 },	-- Troops in the Field
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					-- Chap 1
					q(42097, {	-- Searching the Archives
						["sourceQuests"] = { 42601 },	-- Tech It Up A Notch
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["coord"] = { 65.6, 47.2, DREADSCAR_RIFT },
					}),
					q(41759, {	-- An Unlikely Ally
						["sourceQuests"] = { 42097 },	-- Searching the Archives
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["coord"] = { 65.9, 47.0, DREADSCAR_RIFT },
					}),
					q(39179, {	-- Bloodstone Bandit
						["sourceQuests"] = { 41759 },	-- An Unlikely Ally
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(39389, {	-- It Hungers for Blood
						["sourceQuests"] = { 39179 },	-- Bloodstone Bandit
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(39142, {	-- Testing a Theory
						["sourceQuests"] = { 39389 },	-- It Hungers for Blood
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(40218, {	-- Debt Repaid
						["sourceQuests"] = { 39142 },	-- Testing a Theory
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(41767, {	-- A Daring Rescue
						["sourceQuests"] = { 40218 },	-- Debt Repaid
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
						["maps"] = { 748 },	-- Niskara (Scenario Map)
						["g"] = {
							artifact(813),	-- Skull of the Man'ari
							artifact(813),	-- Spine of Thal'kiel
							artifact(322),	-- Ulthalesh, the Deadwind Harvester
							artifact(191),	-- Scepter of Sargeras
						},
					}),
					q(41753, {	-- Champion: Jubeka Shadowbreaker
						["sourceQuests"] = { 41767 },	-- A Daring Rescue
						["provider"] = { "n", 105922 },	-- Jubeka Shadowbreaker <Council of the Black Harvest>
						["coord"] = { 56.6, 34.0, DREADSCAR_RIFT },
						["g"] = {
							follower(619),	-- Jubeka Shadowbreaker
						},
					}),
					q(41752, {	-- Champion: Zinnin Smythe
						["sourceQuests"] = { 41767 },	-- A Daring Rescue
						["provider"] = { "n", 105923 },	-- Zinnin Smythe <Council of the Black Harvest>
						["coord"] = { 57.6, 35.0, DREADSCAR_RIFT },
						["g"] = {
							follower(618),	-- Zinnin Smythe
						},
					}),
					-- Chap 2
					q(42098, {	-- Black Rook Hold: An Unclaimed Soul
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- Black Rock Hold
					}),
					q(42100, {	-- Empowering the Soul
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
					}),
					q(41798, {	-- Recruiting More Troops
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["provider"] = { "n", 106199 },	-- Ritssyn Flamescowl
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(41768, {	-- Soul Beacon
						["sourceQuests"] = {
							42098,	-- Black Rook Hold: An Unclaimed Soul
							42100,	-- Empowering the Soul
						},
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["coord"] = { 55.3, 37.1, DREADSCAR_RIFT },
					}),
					q(41769, {	-- Mad Ernie the Alchemist
						["sourceQuests"] = { 41768 },	-- Soul Beacon
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["coord"] = { 54.0, 36.2, 717 },
					}),
					q(41781, {	-- Herding Goats
						["sourceQuest"] = 41769,	-- Mad Ernie the Alchemist
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
						["coord"] = { 39.1, 62.6, VALSHARAH },
					}),
					q(41780, {	-- Doom and Gloom
						["sourceQuest"] = 41781,	-- Herding Goats
						["coord"] = { 39.1, 62.6, VALSHARAH },
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
					}),
					q(41784, {	-- Borrowed Time
						["sourceQuests"] = { 41780 },	-- Doom and Gloom
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
						["coord"] = { 39.1, 62.6, VALSHARAH },
						["g"] = {
							i(139770),	-- Wristbands of the Black Harvest
						},
					}),
					q(41751, {	-- Champion: Kira Iresoul
						["sourceQuests"] = { 41784 },	-- Borrowed Time
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
						["g"] = {
							follower(617),	-- Kira Iresoul
						},
					}),
					q(41754, {	-- Champion: Shinfel Blightsworn
						["sourceQuests"] = { 41784 },	-- Borrowed Time
						["provider"] = { "n", 105140 },	-- Shinfel Blightsworn <Council of the Black Harvest>
						["coord"] = { 54.0, 35.5, DREADSCAR_RIFT },
						["g"] = {
							follower(620),	-- Shinfel Blightsworn
						},
					}),
					-- Chap 3
					q(42102, {	-- One Who's Worthy
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							41754,	-- Champion: Shinfel Blightsworn
						},
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["coord"] = { 54.0, 36.2, DREADSCAR_RIFT },
					}),
					q(42660, {	-- Vault of the Wardens: Matters of the Heart
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							-- 41754,	-- Champion: Shinfel Blightsworn - Discord 9-Nov-23
						},
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
						["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
					}),
					q(42103, {	-- Let it Feed
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							-- 41754,	-- Champion: Shinfel Blightsworn - Discord 9-Nov-23
						},
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
					}),
					q(44682, {	-- Unparalleled Power
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							41754,	-- Champion: Shinfel Blightsworn
						},
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 67.0, 46.4, DREADSCAR_RIFT },
					}),
					q(41785, {	-- Finding Fizzlebang
						["sourceQuests"] = {
							42102,	-- One Who's Worthy
							42660,	-- Vault of the Wardens: Matters of the Heart
							42103,	-- Let it Feed
							44682,	-- Unparalleled Power
						},
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["coord"] = { 53.9, 36.2, DREADSCAR_RIFT },
					}),
					q(41788, {	-- Coercing a Confession
						["sourceQuests"] = { 41785 },	-- Finding Fizzlebang
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41787, {	-- Someone Else's Mess
						["sourceQuests"] = { 41785 },	-- Finding Fizzlebang
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41793, {	-- Lulubelle on Loan
						["sourceQuests"] = {
							41787, -- Someone Else's Mess
							41788, -- Coercing a Confession
						},
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41755, {	-- Champion: Lulubelle Fizzlebang
						["sourceQuests"] = { 41793 },	-- Lulubelle on Loan
						["provider"] = { "n", 105928 },	-- Lulubelle Fizzlebang
						["coord"] = { 54.4, 39.3, DREADSCAR_RIFT },
						["g"] = {
							follower(590),	-- Lulubelle Fizzlebang
						},
					}),
					-- Chap 4
					q(41795, {	-- Summoning the Sisters
						["sourceQuests"] = { 41755 },	-- Champion: Lulubelle Fizzlebang
						["provider"] = { "n", 105815 },	-- Ritssyn Flamescowl
						["coord"] = { 55.0, 37.4, DREADSCAR_RIFT },
					}),
					q(41756, {	-- Champion: Eredar Twins
						["sourceQuests"] = { 41795 },	-- Summoning the Sisters
						["provider"] = { "n", 106228 },	-- Grand Warlock Alythess
						["coord"] = { 58.3, 40.8, DREADSCAR_RIFT },
						["g"] = {
							follower(621),	-- Eredar Twins
						},
					}),
					q(41796, {	-- Selecting a Sixth
						["sourceQuests"] = { 41795 },	-- Summoning the Sisters
						["provider"] = { "n", 105951 },	-- Ritssyn Flamescowl
						["coord"] = { 55.0, 37.4, DREADSCAR_RIFT },
						["g"] = {
							i(139767),	-- Robes of the Black Harvest
							title(337),	-- Netherlord <Name>
						},
					}),
					q(43414, {	-- A Hero's Weapon
						["sourceQuests"] = { 41796 },	-- Selecting the Sixth
						["provider"] = { "n", 110488 },	-- Ritssyn Flamescowl
						["coord"] = { 36.3, 30.8, DREADSCAR_RIFT },
						["g"] = {
							artifact(334),	-- Ulthalesh, the Deadwind Harvester
							artifact(815),	-- Skull of the Man'ari
							artifact(815),	-- Spine of Thal'kiel
							artifact(194),	-- Scepter of Sargeras
						}
					}),
					-- Interlude
					q(45989, {	-- An Urgent Warning
						["sourceQuest"] = 43414,	-- A Hero's Weapon
						["provider"] = { "n", 118423 },	-- Injured Invoker
						["coord"] = { 58.6, 37.6, DREADSCAR_RIFT },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(45990, {	-- Investigate the Broken Shore
						["sourceQuest"] = 45989,	-- An Urgent Warning
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder <Mission Strategist>
						["coord"] = { 66.6, 46.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45021, {	-- Answers Unknown
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						["provider"] = { "n", 105926 },	-- Shinfel Blightsworn
						["coord"] = { 57.4, 38.0, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45024, {	-- Cult Culling
						["sourceQuests"] = { 45021 },	-- Answers Unknown
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45025, {	-- Stealing the Source of Power
						["sourceQuests"] = { 45021 },	-- Answers Unknown
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45026, {	-- Expending Fel Energy
						["sourceQuests"] = {
							45024,	-- Cult Culling
							45025,	-- Stealing the Source of Power
						},
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45794, {	-- Informing the Council
						["sourceQuests"] = { 45026 },	-- Expending Fel Energy
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45027, {	-- To the Broken Shore
						["sourceQuests"] = { 45794 },	-- Informing the Council
						["provider"] = { "n", 105926 },	-- Shinfel Blightsworn
						["coord"] = { 57.4, 38.0, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45028, {	-- The Fate of Kanrethad
						["sourceQuests"] = { 45027 },	-- To the Broken Shore
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 81.1, 49.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46020, {	-- Crystal Containment
						["sourceQuests"] = { 45028 },	-- The Fate of Kanrethad
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["coord"] = { 78.1, 39.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46047, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Kanrethad Ebonlocke
						["sourceQuests"] = { 46020 },	-- Crystal Containment
						["provider"] = { "n", 118927 },	-- Kanrethad Ebonlocke
						["coord"] = { 55.8, 34.4, DREADSCAR_RIFT },
						["g"] = {
							follower(997),	-- Kanrethad Ebonlocke
						},
					})),
					q(46316, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Kanrethad Ebonlocke (If completed Green Fire)
						["description"] = "This quest is only available if you completed the Green Fire Questline.",
						["sourceQuests"] = {
							46020,	-- Crystal Containment
							32340,	-- Plunder the Black Temple
						},
						["provider"] = { "n", 118927 },	-- Kanrethad Ebonlocke
						["coord"] = { 55.8, 34.4, DREADSCAR_RIFT },
						["g"] = {
							follower(997),	-- Kanrethad Ebonlocke
						},
					})),
					q(46237, {	-- Bloodbringer's Missive
						["sourceQuests"] = {
							46047,	-- Champion: Kanrethad Ebonlocke
							46316,	-- Champion: Kanrethad Ebonlocke
						},
						["provider"] = { "n", 117622 },	-- Elithys Firestorm
						["coord"] = { 43.9, 63.2, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46239, {	-- Fel to the Core
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46240, {	-- Give Me Fuel, Give Me Fire
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46238, {	-- If You Build It
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["cost"] = {
							{ "i", 123919, 5 },	-- 5xFelslate
							{ "i", 130175, 3 },	-- 3xChaotic Spinel
							{ "i", 127845, 1 },	-- 1xUnbending Potion
						},
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46241, {	-- The Minions of Hel'nurath
						["sourceQuests"] = {
							46239,	-- Fel to the Core
							46240,	-- Give Me Fuel, Give Me Fire
							46238,	-- If You Build It
						},
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46242, {	-- The Dreadlord's Calling
						["sourceQuests"] = { 46241 },	-- The Minions of Hel'nurath
						["maps"] = { BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46243, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Wrathsteed of Xoroth
						["sourceQuests"] = { 46242 },	-- The Dreadlord's Calling
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["coord"] = { 35.6, 38.4, DREADSCAR_RIFT },
						["g"] = {
							mount(232412),	-- Netherlord's Chaotic Wrathsteed (MOUNT!)
						},
					})),
					-- Misc
					q(43887, {	-- Hitting the Books
						["provider"] = { "n", 111740 },	-- Mile Raitheborne <Head Archivist>
						["coord"] = { 57.6, 40.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46131, {	-- Knowledge is Power
						["sourceQuest"] = 43887,	-- Hitting the Books
						["provider"] = { "n", 111740 },	-- Mile Raitheborne <Head Archivist>
						["coord"] = { 57.6, 40.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46150, {	-- Furthering Knowledge
						["sourceQuest"] = 46131,	-- Knowledge is Power
						["provider"] = { "n", 111740 },	-- Mile Raitheborne <Head Archivist>
						["coord"] = { 57.6, 40.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46784, {	-- Further Advancement
						["sourceQuest"] = 46047,	-- Champion: Kanrethad Ebonlocke
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["coord"] = { 67.0, 46.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
				}),
				n(SPECIAL, {
					gt(366, {	-- Demonic Offering
						["description"] = "This class hall ability allows you and two other members to summon a demon that you must kill. As part of the ritual, one of your party members (or you) will be sacrificed, so make sure to Soulstone yourself prior to summoning. Upon killing them they have a chance of dropping these items.",
						["questID"] = 42481,	-- Daily Quest
						["crs"] = {
							112385,	-- Argothel
							112380,	-- Balzorok
							112378,	-- Dal'grozz
							112397,	-- Dargrol
							112376,	-- Dro'zek
							112377,	-- Erdu'un
							112374,	-- Firecaller Rok'duun
							112399,	-- Gelgothar
							112381,	-- Gelthrak
							112396,	-- Gloth
							112395,	-- Gurgstok
							112391,	-- Idra'zuul
							112384,	-- Ko'razz
							112394,	-- Kur'zok
							112398,	-- Maglothar
							112387,	-- Mordrethal
							112389,	-- Ra'thuzek
							112379,	-- Rek'zelok
							112388,	-- Thel'draz
							112375,	-- Zaldrok
						},
						["g"] = {
							q(42517, {	-- Ritual of Doom
								["sourceQuest"] = 42601,	-- Tech It Up A Notch
								["provider"] = { "n", 111740 },	-- Mile Raithborne
								["coord"] = { 57.0, 41.0, DREADSCAR_RIFT },
							}),
							i(139577, {	-- The Burning Jewel of Sargeras
								artifact(207),	-- Scepter of Sargeras
							}),
							i(136900),	-- Hateful Eye (PET!)
							i(141971),	-- Cowl of the Doomed Ritual
							i(141974),	-- Shoulderpads of the Doome Ritual
							i(141973),	-- Robe of the Doomed Ritual
							i(141970),	-- Handwraps of the Doomed Ritual
							i(141972),	-- Leggings of the Doomed Ritual
							i(141969),	-- Sandals of the Doomed Ritual
							i(141966),	-- Coercive Demonheart
							i(141964),	-- Flaming Demonheart
							i(141968),	-- Immense Demonheart
							i(141965),	-- Shadowy Demonheart
							i(141967),	-- Whispering Demonheart
						},
					}),
					gt(367, {	-- Seed of Corruption
						q(44227, {	-- Unleashing our Wrath
							["sourceQuest"] = 42601,	-- Tech It Up A Notch
							["provider"] = { "n", 113371 },	-- Demonia Pickerin
							["coord"] = { 50.0, 24.4, DREADSCAR_RIFT },
							["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						}),
					}),
					gt(364, {	-- Shadow Pact
						q(44228, {	-- Champion Armaments
							["sourceQuest"] = 42601,	-- Tech It Up A Notch
							["provider"] = { "n", 110408 },	-- Murr
							["coord"] = { 57.6, 52.6, DREADSCAR_RIFT },
						}),
					}),
					n(106216, {	-- Imp Mother Dyala <Recruiter>
						["coord"] = { 65.0, 33.0, DREADSCAR_RIFT },
						["g"] = {
							i(207178, {	-- Grimoire of the Darkfire Imp (CI!)
								["timeline"] = { ADDED_10_1_5 },
								["cost"] = 150000000,	-- 15,000g
							}),
						},
					}),
				}),
				n(VENDORS, {
					n(101097, {	-- Calydus
						["coord"] = { 37.7, 31.0, DREADSCAR_RIFT },
						["g"] = {
							i(143637, {	-- Netherlord's Brimstone Wrathsteed (MOUNT!)
								["sourceQuests"] = { 46243 },	-- The Wrathsteed of Xoroth
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
						},
					}),
					n(112434, {	-- Gigi Gigavoid <Black Harvest Quartermaster>
						["coord"] = { 58.7, 32.7, DREADSCAR_RIFT },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(139768, {	-- Amice of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(139769, {	-- Cinch of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(139764, {	-- Gloves of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(212783, {	-- Grimoire of the Netherwalk Tyrant (CI!)
								["cost"] = 50000000,	-- 5000g
								["timeline"] = { ADDED_10_2_5 },
							}),
							i(139766, {	-- Leggings of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(140945, {	-- Netherlord's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140983, {	-- Netherlord's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140982, {	-- Netherlord's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(140553),	-- Netherlord's Staff of Summoning
							i(139763, {	-- Path of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(139767, {	-- Robes of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(139765, {	-- Visage of the Black Harvest
								["cost"] = 5000000,	-- 500g
							}),
							i(139770, {	-- Wristbands of the Black Harvest
								["cost"] = 5000000,	-- 500g
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
		q(41154),	-- Attacking Revil Kost During Artifact Quest
		q(42205),	-- Entrance Bit -  using Portal to Scenario during "Dark Whispers" (questID 42125)
		q(40514),	-- Revil convinced
		q(42203),	-- Ritual Bit -  using Portal to Scenario during "Dark Whispers" (questID 42125)
		q(42084),	-- Selecting a Sixth: Kira
		q(42085),	-- Selecting a Sixth: Lulubelle
		q(44655),	-- Tracking Quest: 7.0 Class Hall - Warlock - Pacing Mission 1 - completed the "Searching the Archives" mission
		q(44656),	-- Tracking Quest: 7.0 Class Hall - Warlock - Pacing Mission 2a
		q(44657),	-- Tracking Quest: 7.0 Class Hall - Warlock - Tutorial 1 - Information at Any Cost - completed the "Information at any Cost" mission
		q(44628),	-- Tracking Quest: Empowering the Soul 1 - completed the "The Harpies' Curse" mission
		q(44629),	-- Tracking Quest: Empowering the Soul 2 - completed the "Bradensbrook Under Attack" mission
		q(44630),	-- Tracking Quest: Empowering the Soul 3 - completed the "Cleansing the Vale" mission
		q(44631),	-- Tracking Quest: Empowering the Soul 4 - completed the "Pesky Pest Problem" mission
		q(44632),	-- Tracking Quest: Empowering the Soul 5 - completed the "Hunting the Hunters" mission
		q(44438),	-- Tracking Quest: New Blood 1 - completed the "One Who's Worthy" mission
		q(44439),	-- Tracking Quest: New Blood 2 - completed the "One Who's Worthy" mission
		q(44440),	-- Tracking Quest: New Blood 3 - completed the "One Who's Worthy" mission
		q(44441),	-- Tracking Quest: New Blood 4 - completed the "One Who's Worthy" mission
		q(44442),	-- Tracking Quest: New Blood 5 - completed the "One Who's Worthy" mission
	}),
});