-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
			["maps"] = { DREADSCAR_RIFT },
			["groups"] = {
				n(ARTIFACTS, {
					cl(WARLOCK, AFFLICTION, {
						i(140764, {	-- Grimoire of the First Necrolyte (QS!)
							["description"] = "Any demon can drop this.",
						}),
						q(44083, {	-- The Grimoire of the First Necrolyte
							["provider"] = { "i", 140764 },	-- Grimoire of the First Necrolyte
							["description"] = "Only available from rare elite WQs.",
						}),
						n(112862, {	-- Sataiel
							["sourceQuest"] = 44083,	-- The Grimoire of the First Necrolyte
							["coord"] = { 38.6, 73.8, DEADWIND_PASS },
							["groups"] = {
								i(139575, {	-- Essence of the Executioner
									artifact(328),	-- Ulthalesh, the Deadwind Harvester
								}),
							},
						}),
					}),
					cl(WARLOCK, DEMONOLOGY, {
						["description"] = "The heads can drop from any Eredar. Keep killing them until you unlock the hidden appearance.",
						["groups"] = {
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
								["groups"] = {
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
						["provider"] = { "n", 101456 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 40716 },	-- The Sixth
						["coord"] = { 57.3, 60.8, LEGION_THE_UNDERBELLY },
						["maps"] = { 718 },	-- Dreadscar Rift (Scenario Map)
					}),
					-- Artifact
					q(40684, {	-- The Tome of Blighted Implements
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = {
							40729,	-- The New Blood
						},
						["coord"] = { 56.3, 65.0, LEGION_THE_UNDERBELLY },
						["description"] = "You must complete the Affliction quest line BEFORE completing the Demonology quest line to obtain certain breadcrumb quests.",
					}),
					q(43984, {	-- The Tome Opens Again
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = { 40684 },	-- The Tome of Blighted Implements
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
					}),
					q(44089, {	-- A Greater Arsenal
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = { 43984 },	-- The Tome Opens Again
						["coord"] = { 37.6, 31.9, DREADSCAR_RIFT },
					}),
					cl(WARLOCK, AFFLICTION, {
						q(40495, {	-- Ulthalesh, the Deadwind Harvester
							["provider"] = { "n", 101097 },	-- Calydus
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
							["groups"] = {
								i(173527, {	-- Duskwood Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(40588, {	-- Following the Curse
							["provider"] = { "n", 100323 },	-- Revil Kost
							["sourceQuest"] = 40495,	-- Ulthalesh, the Deadwind Harvester
							["coord"] = { 77.4, 36.1, DUSKWOOD },
						}),
						q(40604, {	-- Disturbing the Past
							["provider"] = { "n", 100729 },	-- Revil Kost
							["sourceQuest"] = 40588,	-- Following the Curse
							["coord"] = { 52.3, 34.5, DEADWIND_PASS },
						}),
						q(40606, {	-- To Point the Way
							["provider"] = { "o", 245793 },	-- Battered Journal
							["sourceQuests"] = { 40604 },	-- Disturbing the Past
							["coord"] = { 52.3, 33.9, DEADWIND_PASS },
							["icon"] = 953644,
						}),
						q(40611, {	-- The Fate of Deadwind
							["provider"] = { "n", 100729 },	-- Revil Kost
							["sourceQuests"] = { 40606 },	-- To Point the Way
							["coord"] = { 52.3, 34.4, DEADWIND_PASS },
						}),
						q(40623, {	-- The Dark Riders (Good)
							["provider"] = { "n", 100812 },	-- Revil Kost
							["sourceQuests"] = { 40611 },	-- The Fate of Deadwind
							["coord"] = { 49.4, 74.8, DEADWIND_PASS },
							["description"] = "Obtainable if you are good to Revil Kost",
							["groups"] = {
								i(128942, {	-- Ulthalesh, the Deadwind Harvester
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(294),	-- Ulthalesh, the Deadwind Harvester
									},
								}),
							},
						}),
						q(41155, {	-- The Dark Riders (Bad)
							["provider"] = { "n", 100812 },	-- Revil Kost
							["sourceQuests"] = { 40611 },	-- The Fate of Deadwind
							["coord"] = { 49.4, 74.8, DEADWIND_PASS },
							["description"] = "Obtainable if you attack Revil Kost",
							["groups"] = {
								i(128942, {	-- Ulthalesh, the Deadwind Harvester
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(294),	-- Ulthalesh, the Deadwind Harvester
									},
								}),
							},
						}),
						q(40712, {	-- The Power Possessed (Good)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["sourceQuests"] = { 40623 },	-- The Dark Riders (Good)
							["coord"] = { 68.5, 28.7, 46 },	-- Karazhan Catacombs
							["description"] = "Obtainable if you are good to Revil Kost. This quest cross completes with 41156, and is unobtainable if you complete the Demonology artifact weapon before Affliction.",
							["isBreadcrumb"] = true,
						}),
						q(41156, {	-- The Power Possessed (Bad)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["sourceQuests"] = { 41155 },	-- The Dark Riders (Bad)
							["coord"] = { 68.5, 28.7, 46 },	-- Karazhan Catacombs
							["description"] = "Obtainable if you attack Revil Kost. This quest cross completes with 40712, and is unobtainable if you complete the Demonology artifact weapon before Affliction.",
							["isBreadcrumb"] = true,
						}),
					}),
					cl(WARLOCK, DEMONOLOGY, {
						q(42128, {	-- Ritual Reagents
							["provider"] = { "n", 101097 },	-- Calydus
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
						}),
						q(42168, {	-- Looking into the Darkness
							["provider"] = { "n", 106610 },	-- Calydus
							["sourceQuests"] = { 42128 },	-- Ritual Reagents
							["coord"] = { 54.0, 47.0, LEGION_DALARAN },
						}),
						q(42125, {	-- Dark Whispers
							["provider"] = { "n", 106610 },	-- Calydus
							["sourceQuests"] = { 42168 },	-- Looking into the Darkness
							["coord"] = { 54.0, 47.0, LEGION_DALARAN },
							["groups"] = {
								i(128943, {	-- Skull of the Man'ari
									["ItemAppearanceModifierID"] = 0,
									["groups"] = {
										artifact(811),	-- Skull of the Man'ari
									},
								}),
								i(137246, {	-- Spine of Thal'kiel
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(811),	-- Spine of Thal'kiel
									},
								}),
							},
						}),
					}),
					cl(WARLOCK, DESTRUCTION, {
						q(43100, {	-- Finding the Scepter
							["provider"] = { "n", 101097 },	-- Calydus
							["sourceQuests"] = {
								40684,	-- The Tome of Blighted Implements
								43984,	-- The Tome Opens Again
								44089,	-- A Greater Arsenal
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 56.4, 64.6, LEGION_THE_UNDERBELLY },
								{ 37.7, 31.8, DREADSCAR_RIFT },
							},
							["groups"] = {
								i(139035),	-- Book of Medivh (QI!)
								i(173526, {	-- Caer Darrow Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 }
								}),
							},
						}),
						q(43153, {	-- An Eye for a Scepter
							["provider"] = { "n", 109698 },	-- Calydus
							["sourceQuest"] = 43100,	-- Finding the Scepter
							["coord"] = { 69.2, 79.0, WESTERN_PLAGUELANDS },
							["maps"] = { 773, 774 },	-- Tol Barad (Scenario Map)
						}),
						q(43254, {	-- Ritual Ruination
							["provider"] = { "n", 109838 },	-- Calydus
							["sourceQuests"] = { 43153 },	-- An Eye for a Scepter
							["coord"] = { 73.8, 42.9, LEGION_DALARAN },
							["groups"] = {
								i(128941, {	-- Scepter of Sargeras
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(188),	-- Scepter of Sargeras
									},
								}),
							},
						}),
					}),
					-- Introduction
					q(40731, {	-- The Heart of the Dreadscar
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = {
							42125,	-- Dark Whispers
							43254,	-- Ritual Ruination
							41155,	-- The Dark Riders (Bad)
							40623,	-- The Dark Riders (Good)
							40712,	-- The Power Possessed (Good)
							41156,	-- The Power Possessed (Bad)
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 56.4, 65.0, LEGION_THE_UNDERBELLY },
						["maps"] = { 718 },	-- Dreadscar Rift (Scenario Map)
					}),
					q(40821, {	-- Power Overwhelming
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = { 40731 },	-- The Heart of the Dreadscar
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(44254, {	-- Gazing Into Oblivion
						["provider"] = { "n", 112434 },	-- Gigi Gigavoid
						["sourceQuest"] = 40731,	-- The Heart of the Dreadscar
						["coord"] = { 58.7, 32.7, DREADSCAR_RIFT },
						["groups"] = {
							i(139765),	-- Visage of the Black Harvest
						},
					}),
					q(40823, {	-- Rebuilding the Council
						["provider"] = { "n", 101097 },	-- Calydus
					-- #if BEFORE 8.0.1
						["sourceQuests"] = { 40821 },	-- Power Overwhelming
						-- #endif
						["coord"] = { 37.7, 31.8, DREADSCAR_RIFT },
					}),
					q(44099, {	-- A Mutual Friend
						["provider"] = { "n", 112693 },	-- Black Harvest Acolyte
						["sourceQuests"] = { 40824 },	-- The Path of the Dreadscar
						["maps"] = { LEGION_THE_UNDERBELLY },
						["isBreadcrumb"] = true,
					}),
					-- Start Legion Zone
					q(40824, {	-- The Path of the Dreadscar
						["provider"] = { "n", 101921 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 40823 },	-- Rebuilding the Council
						["coord"] = { 31.2, 58.8, DREADSCAR_RIFT },
					}),
					-- Learn Mission Table & Research
					q(42608, {	-- Rise, Champions
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = { 44099 },	-- A Mutual Friend
						["coord"] = { 37.6, 31.8, DREADSCAR_RIFT },
					}),
					q(41750, {	-- Champion: Calydus
						["provider"] = { "n", 101097 },	-- Calydus
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["coord"] = { 37.6, 31.8, DREADSCAR_RIFT },
						["groups"] = {
							follower(616),	-- Calydus
						},
					}),
					q(41748, {	-- Champion: Ritssyn Flamescowl
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["coord"] = { 65.4, 47.3, DREADSCAR_RIFT },
						["groups"] = {
							follower(589),	-- Ritssyn Flamescowl
						},
					}),
					q(42603, {	-- Information at Any Cost
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuests"] = { 42608 },	-- Rise, Champions
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(41797, {	-- Recruiting The Troops
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuests"] = { 42603 },	-- Information at Any Cost
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(42602, {	-- Troops in the Field
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuests"] = { 41797 },	-- Recruiting The Troops
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(42601, {	-- Tech It Up A Notch
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuests"] = { 42602 },	-- Troops in the Field
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					-- Chap 1
					q(42097, {	-- Searching the Archives
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 42601 },	-- Tech It Up A Notch
						["coord"] = { 65.6, 47.2, DREADSCAR_RIFT },
					}),
					q(41759, {	-- An Unlikely Ally
						["provider"] = { "n", 104795 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 42097 },	-- Searching the Archives
						["coord"] = { 65.9, 47.0, DREADSCAR_RIFT },
					}),
					q(39179, {	-- Bloodstone Bandit
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 41759 },	-- An Unlikely Ally
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(39389, {	-- It Hungers for Blood
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 39179 },	-- Bloodstone Bandit
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(39142, {	-- Testing a Theory
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 39389 },	-- It Hungers for Blood
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(40218, {	-- Debt Repaid
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 39142 },	-- Testing a Theory
						["coord"] = { 60.8, 30.6, AZSUNA },
					}),
					q(41767, {	-- A Daring Rescue
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 40218 },	-- Debt Repaid
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
						["maps"] = { 748 },	-- Niskara (Scenario Map)
						["groups"] = {
							artifact(813),	-- Skull of the Man'ari
							artifact(813),	-- Spine of Thal'kiel
							artifact(322),	-- Ulthalesh, the Deadwind Harvester
							artifact(191),	-- Scepter of Sargeras
						},
					}),
					q(41753, {	-- Champion: Jubeka Shadowbreaker
						["provider"] = { "n", 105922 },	-- Jubeka Shadowbreaker <Council of the Black Harvest>
						["sourceQuests"] = { 41767 },	-- A Daring Rescue
						["coord"] = { 56.6, 34.0, DREADSCAR_RIFT },
						["groups"] = {
							follower(619),	-- Jubeka Shadowbreaker
						},
					}),
					q(41752, {	-- Champion: Zinnin Smythe
						["provider"] = { "n", 105923 },	-- Zinnin Smythe <Council of the Black Harvest>
						["sourceQuests"] = { 41767 },	-- A Daring Rescue
						["coord"] = { 57.6, 35.0, DREADSCAR_RIFT },
						["groups"] = {
							follower(618),	-- Zinnin Smythe
						},
					}),
					-- Chap 2
					q(42098, {	-- Black Rook Hold: An Unclaimed Soul
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- Black Rock Hold
					}),
					q(42100, {	-- Empowering the Soul
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["coord"] = { 55.2, 37.0, DREADSCAR_RIFT },
					}),
					q(41798, {	-- Recruiting More Troops
						["provider"] = { "n", 106199 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							41752,	-- Champion: Zinnin Smythe
							41753,	-- Champion: Jubeka Shadowbreaker
						},
						["coord"] = { 66.3, 46.2, DREADSCAR_RIFT },
					}),
					q(41768, {	-- Soul Beacon
						["provider"] = { "n", 105018 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							42098,	-- Black Rook Hold: An Unclaimed Soul
							42100,	-- Empowering the Soul
						},
						["coord"] = { 55.3, 37.1, DREADSCAR_RIFT },
					}),
					q(41769, {	-- Mad Ernie the Alchemist
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 41768 },	-- Soul Beacon
						["coord"] = { 54.0, 36.2, 717 },
					}),
					q(41781, {	-- Herding Goats
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
						["sourceQuest"] = 41769,	-- Mad Ernie the Alchemist
						["coord"] = { 39.1, 62.6, VALSHARAH },
					}),
					q(41780, {	-- Doom and Gloom
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
						["sourceQuest"] = 41781,	-- Herding Goats
						["coord"] = { 39.1, 62.6, VALSHARAH },
					}),
					q(41784, {	-- Borrowed Time
						["provider"] = { "n", 104824 },	-- Ernest Carlisle
						["sourceQuests"] = { 41780 },	-- Doom and Gloom
						["coord"] = { 39.1, 62.6, VALSHARAH },
						["groups"] = {
							i(139770),	-- Wristbands of the Black Harvest
						},
					}),
					q(41751, {	-- Champion: Kira Iresoul
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["sourceQuests"] = { 41784 },	-- Borrowed Time
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
						["groups"] = {
							follower(617),	-- Kira Iresoul
						},
					}),
					q(41754, {	-- Champion: Shinfel Blightsworn
						["provider"] = { "n", 105140 },	-- Shinfel Blightsworn <Council of the Black Harvest>
						["sourceQuests"] = { 41784 },	-- Borrowed Time
						["coord"] = { 54.0, 35.5, DREADSCAR_RIFT },
						["groups"] = {
							follower(620),	-- Shinfel Blightsworn
						},
					}),
					-- Chap 3
					q(42102, {	-- One Who's Worthy
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							41754,	-- Champion: Shinfel Blightsworn
						},
						["coord"] = { 54.0, 36.2, DREADSCAR_RIFT },
					}),
					q(42660, {	-- Vault of the Wardens: Matters of the Heart
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							-- 41754,	-- Champion: Shinfel Blightsworn - Discord 9-Nov-23
						},
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
						["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
					}),
					q(42103, {	-- Let it Feed
						["provider"] = { "n", 104732 },	-- Kira Iresoul
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							-- 41754,	-- Champion: Shinfel Blightsworn - Discord 9-Nov-23
						},
						["coord"] = { 54.1, 34.9, DREADSCAR_RIFT },
					}),
					q(44682, {	-- Unparalleled Power
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuests"] = {
							41751,	-- Champion: Kira Iresoul
							41754,	-- Champion: Shinfel Blightsworn
						},
						["coord"] = { 67.0, 46.4, DREADSCAR_RIFT },
					}),
					q(41785, {	-- Finding Fizzlebang
						["provider"] = { "n", 105102 },	-- Ritssyn Flamescowl
						["sourceQuests"] = {
							42102,	-- One Who's Worthy
							42660,	-- Vault of the Wardens: Matters of the Heart
							42103,	-- Let it Feed
							44682,	-- Unparalleled Power
						},
						["coord"] = { 53.9, 36.2, DREADSCAR_RIFT },
					}),
					q(41788, {	-- Coercing a Confession
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["sourceQuests"] = { 41785 },	-- Finding Fizzlebang
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41787, {	-- Someone Else's Mess
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["sourceQuests"] = { 41785 },	-- Finding Fizzlebang
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41793, {	-- Lulubelle on Loan
						["provider"] = { "n", 104855 },	-- Lulubelle Fizzlebang
						["sourceQuests"] = {
							41787, -- Someone Else's Mess
							41788, -- Coercing a Confession
						},
						["coord"] = { 39.3, 42.2, STORMHEIM },
					}),
					q(41755, {	-- Champion: Lulubelle Fizzlebang
						["provider"] = { "n", 105928 },	-- Lulubelle Fizzlebang
						["sourceQuests"] = { 41793 },	-- Lulubelle on Loan
						["coord"] = { 54.4, 39.3, DREADSCAR_RIFT },
						["groups"] = {
							follower(590),	-- Lulubelle Fizzlebang
						},
					}),
					-- Chap 4
					q(41795, {	-- Summoning the Sisters
						["provider"] = { "n", 105815 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 41755 },	-- Champion: Lulubelle Fizzlebang
						["coord"] = { 55.0, 37.4, DREADSCAR_RIFT },
					}),
					q(41756, {	-- Champion: Eredar Twins
						["provider"] = { "n", 106228 },	-- Grand Warlock Alythess
						["sourceQuests"] = { 41795 },	-- Summoning the Sisters
						["coord"] = { 58.3, 40.8, DREADSCAR_RIFT },
						["groups"] = {
							follower(621),	-- Eredar Twins
						},
					}),
					q(41796, {	-- Selecting a Sixth
						["provider"] = { "n", 105951 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 41795 },	-- Summoning the Sisters
						["coord"] = { 55.0, 37.4, DREADSCAR_RIFT },
						["groups"] = {
							i(139767),	-- Robes of the Black Harvest
							title(337),	-- Netherlord <Name>
						},
					}),
					q(43414, {	-- A Hero's Weapon
						["provider"] = { "n", 110488 },	-- Ritssyn Flamescowl
						["sourceQuests"] = { 41796 },	-- Selecting the Sixth
						["coord"] = { 36.3, 30.8, DREADSCAR_RIFT },
						["groups"] = {
							artifact(334),	-- Ulthalesh, the Deadwind Harvester
							artifact(815),	-- Skull of the Man'ari
							artifact(815),	-- Spine of Thal'kiel
							artifact(194),	-- Scepter of Sargeras
						}
					}),
					-- Interlude
					q(45989, {	-- An Urgent Warning
						["provider"] = { "n", 118423 },	-- Injured Invoker
						["sourceQuest"] = 43414,	-- A Hero's Weapon
						["coord"] = { 58.6, 37.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
						["isBreadcrumb"] = true,
					}),
					q(45990, {	-- Investigate the Broken Shore
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder <Mission Strategist>
						["sourceQuest"] = 45989,	-- An Urgent Warning
						["coord"] = { 66.6, 46.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45021, {	-- Answers Unknown
						["provider"] = { "n", 105926 },	-- Shinfel Blightsworn
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall
						["coord"] = { 57.4, 38.0, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45024, {	-- Cult Culling
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = { 45021 },	-- Answers Unknown
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45025, {	-- Stealing the Source of Power
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = { 45021 },	-- Answers Unknown
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45026, {	-- Expending Fel Energy
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = {
							45024,	-- Cult Culling
							45025,	-- Stealing the Source of Power
						},
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45794, {	-- Informing the Council
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = { 45026 },	-- Expending Fel Energy
						["coord"] = { 30.4, 44.6, AZSUNA },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45027, {	-- To the Broken Shore
						["provider"] = { "n", 105926 },	-- Shinfel Blightsworn
						["sourceQuests"] = { 45794 },	-- Informing the Council
						["coord"] = { 57.4, 38.0, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45028, {	-- The Fate of Kanrethad
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = { 45027 },	-- To the Broken Shore
						["coord"] = { 81.1, 49.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46020, {	-- Crystal Containment
						["provider"] = { "n", 115863 },	-- Jubeka Shadowbreaker
						["sourceQuests"] = { 45028 },	-- The Fate of Kanrethad
						["coord"] = { 78.1, 39.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46047, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Kanrethad Ebonlocke
						["provider"] = { "n", 118927 },	-- Kanrethad Ebonlocke
						["sourceQuests"] = { 46020 },	-- Crystal Containment
						["coord"] = { 55.8, 34.4, DREADSCAR_RIFT },
						["groups"] = {
							follower(997),	-- Kanrethad Ebonlocke
						},
					})),
					q(46316, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Kanrethad Ebonlocke (If completed Green Fire)
						["provider"] = { "n", 118927 },	-- Kanrethad Ebonlocke
						["sourceQuests"] = {
							46020,	-- Crystal Containment
							32340,	-- Plunder the Black Temple
						},
						["coord"] = { 55.8, 34.4, DREADSCAR_RIFT },
						["description"] = "This quest is only available if you completed the Green Fire Questline.",
						["groups"] = {
							follower(997),	-- Kanrethad Ebonlocke
						},
					})),
					q(46237, {	-- Bloodbringer's Missive
						["provider"] = { "n", 117622 },	-- Elithys Firestorm
						["sourceQuests"] = {
							46047,	-- Champion: Kanrethad Ebonlocke
							46316,	-- Champion: Kanrethad Ebonlocke
						},
						["coord"] = { 43.9, 63.2, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46239, {	-- Fel to the Core
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							i(144443),	-- Overcharged Fel Core (QI!)
						},
					}),
					q(46240, {	-- Give Me Fuel, Give Me Fire
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							i(144444),	-- Owlbeast Blood (QI!)
						},
					}),
					q(46238, {	-- If You Build It
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["sourceQuest"] = 46237,	-- Bloodbringer's Missive
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
						["cost"] = {
							{ "i", 123919, 5 },	-- 5xFelslate
							{ "i", 130175, 3 },	-- 3xChaotic Spinel
							{ "i", 127845, 1 },	-- 1xUnbending Potion
						},
					}),
					q(46241, {	-- The Minions of Hel'nurath
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["sourceQuests"] = {
							46239,	-- Fel to the Core
							46240,	-- Give Me Fuel, Give Me Fire
							46238,	-- If You Build It
						},
						["coord"] = { 35.3, 38.5, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46242, {	-- The Dreadlord's Calling
						["sourceQuests"] = { 46241 },	-- The Minions of Hel'nurath
						["timeline"] = { ADDED_7_2_0 },
						["maps"] = { BROKEN_SHORE },
						["groups"] = {
							i(144445),	-- Xorothian Calling Stone (QI!)
						},
					}),
					q(46243, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Wrathsteed of Xoroth
						["provider"] = { "n", 119166 },	-- Mor'zul Bloodbringer
						["sourceQuests"] = { 46242 },	-- The Dreadlord's Calling
						["coord"] = { 35.6, 38.4, DREADSCAR_RIFT },
						["groups"] = {
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
						["provider"] = { "n", 111740 },	-- Mile Raitheborne <Head Archivist>
						["sourceQuest"] = 43887,	-- Hitting the Books
						["coord"] = { 57.6, 40.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46150, {	-- Furthering Knowledge
						["provider"] = { "n", 111740 },	-- Mile Raitheborne <Head Archivist>
						["sourceQuest"] = 46131,	-- Knowledge is Power
						["coord"] = { 57.6, 40.6, DREADSCAR_RIFT },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46784, {	-- Further Advancement
						["provider"] = { "n", 106199 },	-- Gakin the Darkbinder
						["sourceQuest"] = 46047,	-- Champion: Kanrethad Ebonlocke
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
						["groups"] = {
							q(42517, {	-- Ritual of Doom
								["provider"] = { "n", 111740 },	-- Mile Raithborne
								["sourceQuest"] = 42601,	-- Tech It Up A Notch
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
							["provider"] = { "n", 113371 },	-- Demonia Pickerin
							["sourceQuest"] = 42601,	-- Tech It Up A Notch
							["coord"] = { 50.0, 24.4, DREADSCAR_RIFT },
							["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						}),
					}),
					gt(364, {	-- Shadow Pact
						q(44228, {	-- Champion Armaments
							["provider"] = { "n", 110408 },	-- Murr
							["sourceQuest"] = 42601,	-- Tech It Up A Notch
							["coord"] = { 57.6, 52.6, DREADSCAR_RIFT },
						}),
					}),
					n(106216, {	-- Imp Mother Dyala <Recruiter>
						["coord"] = { 65.0, 33.0, DREADSCAR_RIFT },
						["groups"] = {
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
						["groups"] = {
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
						["groups"] = {
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

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
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
		})),
	}),
})));