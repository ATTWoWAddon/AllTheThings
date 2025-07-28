-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(DEMONHUNTER, bubbleDownSelf({ ["classes"] = { DEMONHUNTER } }, {
			["maps"] = { MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER, MARDUM_THE_SHATTERED_ABYSS_LOWER_COMMAND_CENTER },
			["groups"] = {
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(665),	-- Ashtongue Warriors
					follower(878),	-- Ashtongue Warriors
					follower(879),	-- Ashtongue Warriors
					follower(880),	-- Ashtongue Warriors
					follower(884),	-- Illidari Adepts
					follower(885),	-- Illidari Adepts
					follower(886),	-- Illidari Adepts
					follower(666),	-- Illidari Adepts
					follower(876),	-- Naga Myrmidons
					follower(881),	-- Naga Myrmidons
					follower(882),	-- Naga Myrmidons
					follower(883),	-- Naga Myrmidons
					follower(1027),	-- Shivarra
					follower(1028),	-- Shivarra
					follower(1029),	-- Shivarra
					follower(1030),	-- Shivarra
					follower(877),	-- Transformed Illidari Adepts
					follower(887),	-- Transformed Illidari Adepts
					follower(888),	-- Transformed Illidari Adepts
					follower(889),	-- Transformed Illidari Adepts

					-- TODO: itemID 143849
					follower(991),	-- Coilskar Brute
				})),
				n(QUESTS, {
					q(39047, {	-- Call of the Illidari (Altruis)
						["provider"] = { "n", 99343 },	-- Kor'vas Bloodthorn
						["maps"] = { LEGION_DALARAN },
					}),
					q(39261, {	-- Call of the Illidari (Kayn)
						["provider"] = { "n", 99343 },	-- Kor'vas Bloodthorn
						["maps"] = { LEGION_DALARAN },
					}),
					-- Artifact
					q(40816, {	-- The Power to Survive (Altruis)
						["provider"] = { "n", 99254 },	-- Altruis the Sufferer
						["sourceQuests"] = { 39047 },	-- Call of the Illidari (Altruis)
						["coord"] = { 74.9, 48.9, LEGION_DALARAN },
					}),
					q(40814, {	-- The Power to Survive (Kayn)
						["provider"] = { "n", 99247 },	-- Kayn Sunfury
						["sourceQuests"] = { 39261 },	-- Call of the Illidari (Kayn)
						["coord"] = { 74.9, 48.9, LEGION_DALARAN },
					}),
					q(44379, {	-- In Pursuit of Power (Altruis)
						["provider"] = { "n", 95237 },	-- Altruis the Sufferer
						["sourceQuests"] = { 40816 },	-- The Power to Survive (Altruis)
						["coord"] = { 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					q(44383, {	-- In Pursuit of Power (Kayn)
						["provider"] = { "n", 95240 },	-- Kayn Sunfury
						["sourceQuests"] = { 40814 },	-- The Power to Survive (Kayn)
						["coord"] = { 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					cl(DEMONHUNTER, HAVOC, {
						q(41120, {	-- Making Arrangements (Altruis)
							["qgs"] = {
								99254,	-- Altruis the Sufferer
								95237,	-- Altruis the Sufferer
							},
							["sourceQuests"] = {
								40816,	-- The Power to Survive (Altruis)
								44379,	-- In Pursuit of Power (Altruis)
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 74.9, 48.9, LEGION_DALARAN },
								{ 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
							},
						}),
						q(40819, {	-- Making Arrangements (Kayn)
							["qgs"] = {
								99247,	-- Kayn Sunfury
								95240,	-- Kayn Sunfury
							},
							["sourceQuests"] = {
								40814,	-- The Power to Survive (Kayn)
								44383,	-- In Pursuit of Power (Kayn)
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 74.9, 48.9, LEGION_DALARAN },
								{ 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
							},
						}),
						q(41121, {	-- By Any Means (Altruis)
							["provider"] = { "n", 103156 },	-- Altruis the Sufferer
							["sourceQuest"] = 41120,	-- Making Arrangements (Altruis)
							["coord"] = { 65.6, 67.2, LEGION_DALARAN },
						}),
						q(39051, {	-- By Any Means (Kayn)
							["provider"] = { "n", 94902 },	-- Kayn Sunfury
							["sourceQuest"] = 40819,	-- Making Arrangements (Kayn)
							["coord"] = { 65.3, 66.9, LEGION_DALARAN },
						}),
						q(41119, {	-- The Hunt (Altruis)
							["provider"] = { "n", 103156 },	-- Altruis the Sufferer
							["sourceQuest"] = 41121,	-- By Any Means (Altruis)
							["maps"] = { 723 },	-- Violet Hold
							["groups"] = {
								i(127829, {	-- Twinblades of the Deceiver [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(26),	-- Standard
									},
								}),
								i(127830, {	-- Twinblades of the Deceiver [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(26),	-- Standard
									},
								}),
							},
						}),
						q(39247, {	-- The Hunt (Kayn)
							["provider"] = { "n", 94902 },	-- Kayn Sunfury
							["sourceQuest"] = 39051,	-- By Any Means (Kayn)
							["maps"] = { 723 },	-- Violet Hold
							["groups"] = {
								i(127829, {	-- Twinblades of the Deceiver [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(26),	-- Standard
									},
								}),
								i(127830, {	-- Twinblades of the Deceiver [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(26),	-- Standard
									},
								}),
							},
						}),
					}),
					cl(DEMONHUNTER, VENGEANCE, {
						q(41803, {	-- Asking a Favor (Altruis)
							["qgs"] = {
								99254,	-- Altruis the Sufferer
								95237,	-- Altruis the Sufferer
							},
							["sourceQuests"] = {
								40816,	-- The Power to Survive (Altruis)
								44379,	-- In Pursuit of Power (Altruis)
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 74.9, 48.9, LEGION_DALARAN },
								{ 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
							},
						}),
						q(40247, {	-- Asking a Favor (Kayn)
							["qgs"] = {
								99247,	-- Kayn Sunfury
								95240,	-- Kayn Sunfury
							},
							["sourceQuests"] = {
								40814,	-- The Power to Survive (Kayn)
								44383,	-- In Pursuit of Power (Kayn)
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 74.9, 48.9, LEGION_DALARAN },
								{ 58.6, 57.8, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
							},
						}),
						q(41804, {	-- Ask and You Shall Receive
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["sourceQuests"] = {
								41803,	-- Asking a Favor (Altruis)
								40247,	-- Asking a Favor (Kayn)
							},
							["coord"] = { 28.5, 48.3, LEGION_DALARAN },
						}),
						q(41806, {	-- Return to Jace
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["sourceQuests"] = { 41804 },	-- Ask and You Shall Receive
							["coord"] = { 28.8, 48.6, LEGION_DALARAN },
						}),
						q(41807, {	-- Establishing a Connection
							["provider"] = { "n", 99262 },	-- Jace Darkweaver
							["sourceQuests"] = { 41806 },	-- Return to Jace
							["coord"] = { 74.4, 51.2, LEGION_DALARAN },
						}),
						q(41863, {	-- Vengeance Will Be Ours (Altruis)
							["provider"] = { "n", 99254 },	-- Altruis the Sufferer
							["sourceQuests"] = { 41807 },	-- Establishing a Connection
							["coord"] = { 74.9, 49.0, LEGION_DALARAN },
							["groups"] = {
								i(128832, {	-- Aldrachi Warblades [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(554),	-- Aldrachi Warblades [Main Hand]
									},
								}),
								i(128831, {	-- Aldrachi Warblades [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(554),	-- Aldrachi Warblades [Off Hand]
									},
								}),
							},
						}),
						q(40249, {	-- Vengeance Will Be Ours (Kayn)
							["provider"] = { "n", 99247 },	-- Kayn Sunfury
							["sourceQuests"] = { 41807 },	-- Establishing a Connection
							["coord"] = { 74.9, 49.0, LEGION_DALARAN },
							["groups"] = {
								i(128832, {	-- Aldrachi Warblades [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(554),	-- Aldrachi Warblades [Main Hand]
									},
								}),
								i(128831, {	-- Aldrachi Warblades [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(554),	-- Aldrachi Warblades [Off Hand]
									},
								}),
							},
						}),
					}),
					q(42869, {	-- Eternal Vigil
						["provider"] = { "n", 102799 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							41119,	-- The Hunt (Altruis)
							39247,	-- The Hunt (Kayn)
							41863,	-- Vengeance Will Be Ours (Altruis)
							40249,	-- Vengeance Will Be Ours (Kayn)
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 74.3, 46.2, LEGION_DALARAN },
					}),
					q(42872, {	-- Securing the Way
						["provider"] = { "n", 109196 },	-- Jace Darkweaver
						["sourceQuests"] = { 42869 },	-- Eternal Vigil
						["coord"] = { 95.3, 65.1, LEGION_DALARAN },
					}),
					q(41033, {	-- Return to Mardum (Altruis)
						["provider"] = { "n", 109295 },	-- Matron Mother Malevolence
						["sourceQuest"] = 42872,	-- Securing the Way
						["coord"] = { 94.9, 66.5, LEGION_DALARAN },
					}),
					q(41221, {	-- Return to Mardum (Kayn)
						["provider"] = { "n", 109295 },	-- Matron Mother Malevolence
						["sourceQuest"] = 42872,	-- Securing the Way
						["coord"] = { 94.9, 66.5, LEGION_DALARAN },
					}),
					q(41060, {	-- Unbridled Power (Altruis)
						["provider"] = { "n", 95237 },	-- Altruis the Sufferer
						["sourceQuests"] = { 41033 },	-- Return to Mardum (Altruis)
						["coord"] = { 57.7, 68.4, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					q(41037, {	-- Unbridled Power (Kayn)
						["provider"] = { "n", 95240 },	-- Kayn Sunfury
						["sourceQuests"] = { 41221 },	-- Return to Mardum (Kayn)
						["coord"] = { 57.7, 68.4, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					q(41070, {	-- Spoils of Victory (Altruis)
						["provider"] = { "n", 95237 },	-- Altruis the Sufferer
						["sourceQuests"] = { 41060 },	-- Unbridled Power (Altruis)
						["coord"] = { 58.6, 58.9, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					q(41062, {	-- Spoils of Victory (Kayn)
						["provider"] = { "n", 95240 },	-- Kayn Sunfury
						["sourceQuests"] = { 41037 },	-- Unbridled Power (Kayn)
						["coord"] = { 58.6, 58.9, MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER },
					}),
					q(41064, {	-- Cursed Forge of the Nathrezim
						["sourceQuests"] = {
							41070,	-- Spoils of Victory (Altruis)
							41062,	-- Spoils of Victory (Kayn)
						},
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- confirmed/sourced
					q(42810, {	-- A Final Offer
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = { 42754 },	-- Jump-Capable
						["coord"] = { 59.0, 74.0, 721 },
						["lvl"] = 110,
					}),
					q(43412, {	-- A Hero's Weapon
						["qgs"] = {
							110485,	-- Altruis the Sufferer
							110482,	-- Kayn Sunfury
						},
						["sourceQuests"] = { 44214 },	-- One More Thing
						["coord"] = { 57.7, 33.7, 721 },
						["lvl"] = 110,
					}),
					q(42682, {	-- Additional Accoutrements
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = { 42683 },	-- Demonic Improvements
						["coord"] = { 59.9, 48.7, 720 },
					}),
					q(46159, {	-- An Urgent Message
						["sourceQuests"] = { 47137 },	-- Champions of Legionfall (must be in log)
						["lvl"] = 110,
					}),
					q(45993, {	-- An Urgent Warning
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(42733, {	-- A Very Special Kind of Fuel
						["provider"] = { "n", 98648 },	-- Allari the Souleater
						["sourceQuests"] = { 44694 },	-- One Battle at a Time
						["coord"] = { 55.6, 50.1, 721 },
						["lvl"] = 110,
					}),
					q(42801, {	-- Back in Black
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42594 },	-- Move Like No Other
						["coord"] = { 57.5, 52.3, 720 },
						["lvl"] = 103,
					}),
					q(42679, {	-- Broken Warriors
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							42677,	-- Things Gaardoun Needs (Kayn)
							44161,	-- Things Gaardoun Needs (Altruis)
						},
						["coord"] = { 59.1, 58.7, 720 },
						["lvl"] = 101,
					}),
					q(44223, {	-- Champion Armaments
						["provider"] = { "n", 110433 },	-- Slitesh
						["coord"] = { 60.0, 43.8, 720 },
						["description"] = "Requires the |cFFFFD700Fel Armaments|r order hall upgrade.",
					}),
					q(42653, {	-- Champion: Akama
						["provider"] = { "n", 108239 },	-- Akama
						["sourceQuests"] = {
							39741,	-- Into Our Ranks (Altruis)
							42665,	-- Into Our Ranks (Kayn)
						},
						["coord"] = { 57.9, 57.4, 720 },
						["description"] = "This follower is only available if you sided with |cFFFFD700Altruis the Sufferer|r.",
						["groups"] = {
							follower(718),	-- Champion: Akama
						},
					}),
					q(43184, {	-- Champion: Allari the Souleater
						["provider"] = { "n", 98648 },	-- Allari the Souleater
						["sourceQuests"] = { 42132 },	-- Last, But Not Least (must be in log)
						["coord"] = { 62.0, 49.2, 721 },
						["groups"] = {
							follower(499),	-- Champion: Allari the Souleater
						},
					}),
					q(42690, {	-- Champion: Altruis the Sufferer
						["provider"] = { "n", 108571 },	-- Altruis the Sufferer
						["sourceQuests"] = { 42670 },	-- Rise, Champions (Altruis) — must be on this quest
						["coord"] = { 58.6, 57.7, 720 },
						["lvl"] = 101,
						["groups"] = {
							follower(498),	-- Champion: Altruis the Sufferer
						},
					}),
					q(42697, {	-- Champion: Asha Ravensong
						["provider"] = { "n", 108326 },	-- Asha Ravensong
						["sourceQuests"] = {
							42671,	-- Rise, Champions (Kayn) — must be on this quest
							42670,	-- Rise, Champions (Altruis) — must be on this quest
						},
						["coord"] = { 56.2, 38.9, 720 },
						["lvl"] = 101,
						["groups"] = {
							follower(722),	-- Champion: Asha Ravensong
						},
					}),
					q(42777, {	-- Champion: Belath Dawnblade
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42776 },	-- Two Worthies (must be in log)
						["coord"] = { 57.2, 51.4, 720 },
						["lvl"] = 110,
						["groups"] = {
							follower(594),	-- Champion: Belath Dawnblade
						},
					}),
					q(43185, {	-- Champion: Jace Darkweaver
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = { 42132 },	-- Last, But Not Least (must be in log)
						["coord"] = { 59.0, 73.5, 721 },
						["groups"] = {
							follower(807),	-- Champion: Jace Darkweaver
						},
					}),
					q(42695, {	-- Champion: Kayn Sunfury
						["provider"] = { "n", 108572 },	-- Kayn Sunfury
						["sourceQuest"] = 42671,	-- Rise, Champions (Kayn) — must be on this quest
						["coord"] = { 59.1, 58.7, 720 },
						["lvl"] = 101,
						["groups"] = {
							follower(595),	-- Champion: Kayn Sunfury
						},
					}),
					q(42673, {	-- Champion: Kor'vas Bloodthorn
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							39741,	-- Into Our Ranks (Altruis) — must be on this quest
							42665,	-- Into Our Ranks (Kayn) — must be on this quest
						},
						["coord"] = { 58.5, 56.4, 720 },
						["lvl"] = 103,
						["groups"] = {
							follower(721),	-- Champion: Kor'vas Bloodthorn
						},
					}),
					q(45391, {	-- Champion: Lady S'theno
						["provider"] = { "n", 117481 },	-- Lady S'theno
						["sourceQuests"] = { 46266 },	-- Return of the Slayer
						["coord"] = { 61.1, 55.4, 720 },
						["lvl"] = 110,
						["groups"] = {
							follower(990),	-- Champion: Lady S'theno
						},
					}),
					q(42701, {	-- Champion: Matron Mother Malevolence
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = { 42776 },	-- Two Worthies (must be in log)
						["coord"] = { 59.0, 49.3, 720 },
						["lvl"] = 110,
						["groups"] = {
							follower(720),	-- Champion: Matron Mother Malevolence
						},
					}),
					q(42664, {	-- Champion: Shade of Akama
						["provider"] = { "n", 108246 },	-- Shade of Akama
						["sourceQuests"] = {
							39741,	-- Into Our Ranks (Altruis) — must be on this quest
							42665,	-- Into Our Ranks (Kayn) — must be on this quest
						},
						["coord"] = { 58.5, 56.4, 720 },
						["description"] = "This follower is only available if you sided with |cFFFFD700Kayn Sunfury|r.",
						["lvl"] = 103,
						["groups"] = {
							follower(719),	-- Champion: Shade of Akama
						},
					}),
					q(42634, {	-- Confrontation at the Black Temple (Altruis)
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = { 42801 },	-- Back in Black
						["coord"] = { 59.4, 50.5, 720 },
						["lvl"] = 103,
					}),
					q(42921, {	-- Confrontation at the Black Temple (Kayn)
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = { 42801 },	-- Back in Black
						["coord"] = { 59.4, 50.5, 720 },
						["lvl"] = 103,
					}),
					q(42732, {	-- Deadlier Warglaives
						["provider"] = { "n", 98648 },	-- Allari the Souleater
						["sourceQuests"] = { 44694 },	-- One Battle at a Time
						["coord"] = { 55.6, 50.1, 721 },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						["lvl"] = 110,
					}),
					q(42787, {	-- Deal With It Personally
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42731 },	-- Working With the Wardens
						["coord"] = { 57.5, 53.2, 720 },
						["lvl"] = 110,
					}),
					q(45339, {	-- Defense of the Fel Hammer
						["provider"] = { "n", 116448 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							45329,	-- Operation: Portals
							45330,	-- Scouting Party
						},
						["coord"] = { 74.2, 41.7, 719 },
						["maps"] = {
							879,	-- Mardum, the Shattered Abyss (on the Fel Hammer)
							880,	-- Mardum, the Shattered Abyss (on the Fel Hammer)
						},
						["lvl"] = 110,
					}),
					q(42683, {	-- Demonic Improvements
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 42681 },	-- Loramus, Is That You?
						["coord"] = { 59.1, 58.8, 720 },
					}),
					q(41099, {	-- Direct Our Wrath (Altruis)
						["provider"] = { "n", 95237 },	-- Altruis the Sufferer
						["sourceQuests"] = { 41067 },	-- Time is of the Essence
						["coord"] = { 59.5, 58.0, 720 },
					}),
					q(41069, {	-- Direct Our Wrath (Kayn)
						["provider"] = { "n", 95240 },	-- Kayn Sunfury
						["sourceQuests"] = { 41067 },	-- Time is of the Essence
						["coord"] = { 59.5, 58.0, 720 },
					}),
					q(44226, {	-- Fate Favors Us
						["provider"] = { "n", 112992 },	-- Seer Aleis
						["coord"] = { 54.6, 59.4, 721 },
						["description"] = "Requires the |cFFFFD700Focused War Effort|r order hall upgrade.",
					}),
					q(46780, {	-- Further Advancement
						["provider"] = { "n", 103732 },	-- Tylos Darksight
						["sourceQuests"] = { 45391 },	-- Champion: Lady S'theno
						["coord"] = { 54.0, 46.7, 721 },
						["lvl"] = 110,
					}),
					q(46152, {	-- Furthering Knowledge
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42808, {	-- Green Adepts
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42802 },	-- Securing Mardum
						["coord"] = { 58.3, 51.1, 720 },
						["lvl"] = 103,
					}),
					q(43878, {	-- Hitting the Books
						["u"] = REMOVED_FROM_GAME,
					}),
					q(43186, {	-- I Am the Slayer!
						["qgs"] = {
							108571,	-- Altruis the Sufferer
							108572,	-- Kayn Sunfury
						},
						["sourceQuests"] = {
							43184,	-- Champion: Allari the Souleater
							43185,	-- Champion: Jace Darkweaver
						},
						["coord"] = { 58.5, 59.3, 720 },
						["lvl"] = 110,
						["groups"] = {
							i(142056),	-- Arcanum of the Order
							i(142058),	-- Fel Ward of the Order
							i(142061),	-- Iron Will of the Order
							i(142063),	-- Dusk of the Order
							i(139715),	-- Vest of the Shattered Abyss
							title(320),	-- Slayer <Name>
						},
					}),
					q(42510, {	-- Immortal Soul
						["qgs"] = {
							107723,	-- Altruis the Sufferer
							107724,	-- Kayn Sunfury
						},
						["sourceQuests"] = { 37447 },	-- The Blood of Demons
						["coord"] = { 57.7, 51.7, 721 },
						["lvl"] = 103,
					}),
					q(39741, {	-- Into Our Ranks (Altruis)
						["provider"] = { "n", 108571 },	-- Altruis the Sufferer
						["sourceQuests"] = { 42634 },	-- Confrontation at the Black Temple (Altruis)
						["coord"] = { 58.5, 56.4, 720 },
						["lvl"] = 103,
					}),
					q(42665, {	-- Into Our Ranks (Kayn)
						["provider"] = { "n", 108572 },	-- Kayn Sunfury
						["sourceQuests"] = { 42921 },	-- Confrontation at the Black Temple (Kayn)
						["coord"] = { 58.5, 56.4, 720 },
						["lvl"] = 103,
					}),
					q(45994, {	-- Investigate the Broken Shore
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(42754, {	-- Jump-Capable
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = {
							42733,	-- A Very Special Kind of Fuel
							-- 42732,	-- Deadlier Warglaives
						},
						["coord"] = { 59.0, 74.0, 721 },
						["lvl"] = 110,
					}),
					q(46133, {	-- Knowledge is Power
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42132, {	-- Last, But Not Least
						["qgs"] = {
							108571,	-- Altruis the Sufferer
							108572,	-- Kayn Sunfury
						},
						["sourceQuests"] = { 42920, 42809 },	-- The Invasion of Niskara (Altruis, Kayn)
						["coord"] = { 58.5, 59.3, 720 },
						["lvl"] = 110,
					}),
					q(42522, {	-- Leader of the Illidari
						["qgs"] = {
							107724,	-- Kayn Sunfury
							107723,	-- Altruis the Sufferer
						},
						["sourceQuests"] = { 42510 },	-- Immortal Soul
						["coord"] = { 58.3, 51.5, 721 },
						["lvl"] = 103,
					}),
					q(46333, {	-- Livin' on the Ledge
						["provider"] = { "n", 118316 },	-- Illidari Enforcer
						["sourceQuests"] = {
							46734,	-- Assault on Broken Shore
							47137,	-- Champions of Legionfall
						},
						["coord"] = { 44.0, 62.7, BROKEN_SHORE },
					}),
					q(42681, {	-- Loramus, Is That You?
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 42679 },	-- Broken Warriors
						["coord"] = { 59.3, 57.6, 720 },
						["lvl"] = 101,
					}),
					q(42735, {	-- Malace in Vrykul Land
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42787 },	-- Deal With it Personally
						["coord"] = { 57.6, 53.3, 720 },
					}),
					q(42594, {	-- Move Like No Other
						["provider"] = { "n", 107968 },	-- Archmage Lan'dalock
						["sourceQuests"] = { 42593 },	-- The Arcane Way
						["coord"] = { 26.0, 52.0, LEGION_DALARAN },
					}),
					q(44694, {	-- One Battle at a Time
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = { 42669 },	-- Preparations for Invasion
						["coord"] = { 59.0, 73.8, 721 },
						["lvl"] = 110,
					}),
					q(44214, {	-- One More Thing...
						["qgs"] = {
							108571,	-- Altruis the Sufferer
							108572,	-- Kayn Sunfury
						},
						["sourceQuests"] = { 43186 },	-- I Am the Slayer!
						["coord"] = { 58.5, 59.3, 720 },
						["lvl"] = 110,
					}),
					q(45329, {	-- Operation: Portals
						["provider"] = { "n", 116448 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 45301 },	-- Taking Charge
						["coord"] = { 74.2, 41.7, 719 },
						["lvl"] = 110,
					}),
					q(46725, {	-- Power Outage
						["provider"] = { "n", 117709 },	-- Lady S'theno
						["sourceQuests"] = { 45385 },	-- We Must be Prepared!
						["coord"] = { 52.1, 21.3, BROKEN_SHORE },
					}),
					q(42669, {	-- Preparations for Invasion
						["provider"] = { "n", 98648 },	-- Allari the Souleater
						["sourceQuests"] = { 42776 },	-- Two Worthies
						["coord"] = { 62.3, 58.8, 721 },
						["lvl"] = 110,
					}),
					q(45764, {	-- Restoring Equilibrium
						["provider"] = { "n", 117709 },	-- Lady S'theno
						["sourceQuests"] = { 45385 },	-- We Must be Prepared!
						["coord"] = { 52.1, 21.3, BROKEN_SHORE },
						["groups"] = {
							i(143918),	-- Stabilizing Crystal (QI!)
						},
					}),
					q(46266, {	-- Return of the Slayer
						["provider"] = { "n", 117709 },	-- Lady S'theno
						["sourceQuests"] = {
							46725,	-- Power Outage
							45764,	-- Restoring Equilibrium
							45798,	-- War'zuul the Provoker
						},
						["coord"] = { 52.1, 21.3, BROKEN_SHORE },
					}),
					q(42666, {	-- Return to the Fel Hammer (Altruis)
						["provider"] = { "n", 112666 },	-- Asha Ravensong
						["sourceQuests"] = { 41069 },	-- Direct Our Wrath
						["isBreadcrumb"] = true,
						["lvl"] = 101,
					}),
					q(44087, {	-- Return to the Fel Hammer (Kayn)
						["provider"] = { "n", 112666 },	-- Asha Ravensong
						["sourceQuests"] = { 41069 },	-- Direct Our Wrath
						["isBreadcrumb"] = true,
						["lvl"] = 101,
					}),
					q(42670, {	-- Rise, Champions (Altruis)
						["provider"] = { "n", 103025 },	-- Battlelord Gaardoun
						["sourceQuests"] = {
							41099,	-- Direct Our Wrath
							42666,	-- Return to the Fel Hammer
						},
						["coord"] = { 56.1, 54.1, 720 },
						["lvl"] = 101,
					}),
					q(42671, {	-- Rise, Champions (Kayn)
						["provider"] = { "n", 103025 },	-- Battlelord Gaardoun
						["sourceQuests"] = {
							41099,	-- Direct Our Wrath
							44087,	-- Return to the Fel Hammer
						},
						["coord"] = { 56.4, 55.1, 720 },
						["lvl"] = 101,
					}),
					q(42736, {	-- Rune Ruination
						["provider"] = { "n", 108576 },	-- Malace Shade
						["sourceQuests"] = { 42735 },	-- Malace in Vrykul Land
						["coord"] = { 64.9, 59.0, STORMHEIM },
					}),
					q(42738, {	-- Rune Ruination: Runelord Ragnar
						["provider"] = { "o", 251220 },	-- Ragnar's Runestone
						["sourceQuests"] = { 42736 },	-- Rune Ruination (must be in log)
						["coord"] = { 64.9, 58.9, STORMHEIM },
					}),
					q(42739, {	-- Rune Ruination: Runesage Floki
						["provider"] = { "o", 251221 },	-- Floki's Runestone
						["sourceQuests"] = { 42736 },	-- Rune Ruination (must be in log)
						["coord"] = { 64.9, 58.9, STORMHEIM },
					}),
					q(42737, {	-- Rune Ruination: Runeskeld Rollo
						["provider"] = { "o", 251218 },	-- Rollo's Runestone
						["sourceQuests"] = { 42736 },	-- Rune Ruination (must be in log)
						["coord"] = { 64.9, 58.9, STORMHEIM },
						["description"] = "If the game doesn't properly display the mob's location, Rollo can be found in the cliffside room at 71.4, 39.0.",
					}),
					q(45330, {	-- Scouting Party
						["provider"] = { "n", 116448 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 45301 },	-- Taking Charge
						["coord"] = { 74.2, 41.7, 719 },
						["lvl"] = 110,
					}),
					q(42802, {	-- Securing Mardum
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = {
							39741,	-- Into Our Ranks (Altruis)
							42665,	-- Into Our Ranks (Kayn)
						},
						["coord"] = { 59.5, 50.6, 720 },
						["lvl"] = 103,
					}),
					q(42749, {	-- Strange Bedfellows
						["provider"] = { "n", 108576 },	-- Malace Shade
						["sourceQuests"] = {
							42738,	-- Rune Ruination: Runelord Ragnar
							42739,	-- Rune Ruination: Runesage Floki
							42737,	-- Rune Ruination: Runeskelt Rollo
						},
						["coord"] = { 64.9, 58.9, STORMHEIM },
					}),
					q(45301, {	-- Taking Charge
						["provider"] = { "n", 108311 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 46159 },	-- An Urgent Message
						["coord"] = { 59.5, 58.7, 720 },
						["lvl"] = 110,
					}),
					q(42593, {	-- The Arcane Way
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = { 42522 },	-- Leader of the Illidari
						["coord"] = { 59.9, 48.7, 720 },
						["lvl"] = 103,
					}),
					q(37447, {	-- The Blood of Demons
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 42682 },	-- Additional Accoutrements
						["coord"] = { 59.3, 57.7, 720 },
						["lvl"] = 103,
					}),
					q(42775, {	-- The Crux of the Plan
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42752, 42753 },	-- Vault of the Wardens: Vault Break-In (2 different versions)
						["coord"] = { 57.5, 53.3, 720 },
						["lvl"] = 110,
					}),
					q(41066, {	-- The Hunter's Gaze
						["provider"] = { "n", 95238 },	-- Allari the Souleater
						["sourceQuests"] = { 41062, 41070 },	-- Spoils of Victory (Kayne/Altruis)
						["coord"] = { 59.4, 50.4, 721 },
					}),
					q(42920, {	-- The Invasion of Niskara (Altruis)
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = { 42810 },	-- A Final Offer
						["coord"] = { 59.0, 74.0, 721 },
						["lvl"] = 110,
					}),
					q(42809, {	-- The Invasion of Niskara (Kayn)
						["provider"] = { "n", 98646 },	-- Jace Darkweaver
						["sourceQuests"] = { 42810 },	-- A Final Offer
						["coord"] = { 59.0, 74.0, 721 },
						["lvl"] = 110,
					}),
					q(44161, {	-- Things Gaardoun Needs (Altruis)
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							42697,	-- Champion: Asha Ravensong
							42690,	-- Champion: Altruis the Sufferer
						},
						["coord"] = { 59.3, 57.6, 720 },
						["lvl"] = 101,
					}),
					q(42677, {	-- Things Gaardoun Needs (Kayn)
						["provider"] = { "n", 103761 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = {
							42697,	-- Champion: Asha Ravensong
							42695,	-- Champion: Kayn Sunfury
						},
						["coord"] = { 59.3, 57.6, 720 },
						["lvl"] = 101,
					}),
					q(41096, {	-- Time is of the Essence (Altruis)
						["provider"] = { "n", 95238 },	-- Allari the Souleater
						["sourceQuests"] = { 41066 },	-- The Hunter's Gaze
						["coord"] = { 58.8, 51.2, 721 },
					}),
					q(41067, {	-- Time is of the Essence (Kayn)
						["provider"] = { "n", 95238 },	-- Allari the Souleater
						["sourceQuests"] = { 41066 },	-- The Hunter's Gaze
						["coord"] = { 58.8, 51.2, 721 },
					}),
					q(46334, {	-- To Fel and Back
						["provider"] = { "n", 108784 },	-- Maton Mother Malevolence
						["sourceQuests"] = { 46333 },	-- Livin' on the Ledge
						["coord"] = { 60.1, 50.8, 720 },
						["maps"] = { 861 },	-- Mardum, the Shattered Abyss (scenario)
						["lvl"] = 110,
						["groups"] = {
							mount(229417, {	-- Slayer's Felbroken Shrieker (MOUNT!)
									}),
						},
					}),
					q(42776, {	-- Two Worthies
						["qgs"] = {
							108571,	-- Altruis the Sufferer
							108572,	-- Kayn Sunfury
						},
						["sourceQuests"] = { 42775 },	-- The Crux of the Plan
						["coord"] = { 58.6, 58.8, 720 },
						["lvl"] = 110,
						["groups"] = {
							i(139722),	-- Wristwraps of the Shattered Abyss
						},
					}),
					q(42131, {	-- Unexpected Visitors
						["provider"] = { "n", 98632 },	-- Matron Mother Malevolence
						["sourceQuests"] = {
							39741,	-- Into Our Ranks (Altruis)
							42665,	-- Into Our Ranks (Kayn)
						},
						["coord"] = { 59.5, 50.6, 720 },
						["lvl"] = 103,
					}),
					q(44224, {	-- Unleashing our Wrath
						["u"] = REMOVED_FROM_GAME,
					}),
					q(42752, {	-- Vault of the Wardens: Vault Break-In (not sure why there are 2 versions, but they complete each other)
						["sourceQuests"] = { 42749 },	-- Strange Bedfellows
						["maps"] = { STORMHEIM },
					}),
					q(42753, {	-- Vault of the Wardens: Vault Break-In (not sure why there are 2 versions, but they complete each other)
						["sourceQuests"] = { 42749 },	-- Strange Bedfellows
						["maps"] = { STORMHEIM },
					}),
					q(45798, {	-- War'zuul the Provoker
						["provider"] = { "n", 117709 },	-- Lady S'theno
						["sourceQuests"] = { 45385 },	-- We Must be Prepared!
						["coord"] = { 52.1, 21.3, BROKEN_SHORE },
					}),
					q(45385, {	-- We Must be Prepared!
						["provider"] = { "n", 108311 },	-- Kor'vas Bloodthorn
						["sourceQuests"] = { 45339 },	-- Defense of the Fel Hammer
						["coord"] = { 59.6, 58.8, 720 },
						["lvl"] = 110,
					}),
					q(42731, {	-- Working With the Wardens
						["provider"] = { "n", 108782 },	-- Belath Dawnblade
						["sourceQuests"] = { 42131 },	-- Unexpected Visitors
						["coord"] = { 58.5, 51.6, 720 },
						["lvl"] = 103,
					--	didn't require "Securing Mardum" even though that quest was given at the same time as the SQ.
					}),
					q(44213, {	-- You Will Be Prepared!
						["provider"] = { "n", 112407 },	-- Falara Nightsong
						["coord"] = { 57.7, 44.2, 720 },
						["lvl"] = 110,
					--	unknown if this has any SQs in the campaign or if it's automatically rewarded at 110 regardless of your class campaign progression.  i had done up through "working with the wardens."
						["groups"] = {
							i(139718),	-- Helm of the Shattered Abyss
						},
					}),
				}),
				n(SPECIAL, {
					cl(DEMONHUNTER, HAVOC, {
						i(141409, {	-- Candrael's Charm (CI!)
							["description"] = "Find this item on mobs in Suramar.",
							["maps"] = { SURAMAR },
						}),
						n(113935, {	-- Candrael Twinshadow
							["description"] = "They will fling you up in the air to flying demon Downfall.",
							["coord"] = { 28.2, 70.2, SURAMAR },
							["cost"] = {{ "i", 141409, 1}},	-- 1xCandrael's Charm
							["groups"] = {
								n(111110, {	-- Downfall
									["description"] = "If you are near him his winds will keep you aloft while you fight him.\nHe will occassionaly knock you back, make use of your glide ability and make sure you float back to (through) him, you will begin to float once you come near.\n\nWhen he dies his corpse will fall to the ground.",
									["groups"] = {
										i(139549, {	-- Guise of the Deathwalker
											artifact(982),	-- Twinblades of the Deceiver [Main Hand]
											artifact(982),	-- Twinblades of the Deceiver [Off Hand]
										}),
									},
								}),
							},
						}),
					}),
					gt(419, {	-- Twisting Nether
						["questID"] = 44707,
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
							i(139550, {	-- Bulwark of the Iron Warden
								artifact(571),	-- Aldrachi Warblades [Main Hand]
								artifact(571),	-- Aldrachi Warblades [Off Hand]
							}),
							i(136900),	-- Hateful Eye (PET!)
							i(141959),	-- Soul Flame of Alacrity
							i(141962),	-- Soul Flame of Castigation
							i(141958),	-- Soul Flame of Fortification
							i(141960),	-- Soul Flame of Insight
							i(141961),	-- Soul Flame of Rejuvenation
						},
					}),
				}),
				n(VENDORS, {
					n(116621, {	-- Demissya Gladestrider <Illidari Provisioner's Assistant>
						["coord"] = { 59.3, 42.4, 720 },
						["groups"] = {
							i(123960),	-- Charm of Demonic Fire
							i(123959),	-- Demon Trophy
							i(128950),	-- Demon-Rend Shoulderblades (A)
							i(133311),	-- Demon-Rend Shoulderblades (H)
							i(128956),	-- Fel-Etched Glaive
							i(132243),	-- Fel-Etched Glaive
							i(138970),	-- Helm of Reaffirmed Purpose (A)
							i(141650),	-- Helm of Reaffirmed Purpose (H)
							i(112460),	-- Illidari Band
							i(133325),	-- Illidari Belt (A)
							i(112453),	-- Illidari Belt (H)
							i(133320),	-- Illidari Blindfold (A)
							i(112450),	-- Illidari Blindfold (H)
							i(133324),	-- Illidari Boots (A)
							i(112457),	-- Illidari Boots (H)
							i(133323),	-- Illidari Bracers (A)
							i(112452),	-- Illidari Bracers (H)
							i(112461),	-- Illidari Chain
							i(112462),	-- Illidari Drape
							i(133321),	-- Illidari Gloves (A)
							i(112455),	-- Illidari Gloves (H)
							i(133319),	-- Illidari Leggings (A)
							i(112451),	-- Illidari Leggings (H)
							i(112459),	-- Illidari Ring
							i(133322),	-- Illidari Robe (A)
							i(112454),	-- Illidari Robe (H)
							i(133318),	-- Illidari Shoulders (A)
							i(112456),	-- Illidari Shoulders (H)
							i(112458),	-- Illidari Warglaive
							i(129181),	-- Illidari Warglaive
							i(128949),	-- Infernal Firecord Sash (A)
							i(133315),	-- Infernal Firecord Sash (H)
							i(128951),	-- Leggings of Sacrifice (A)
							i(133316),	-- Leggings of Sacrifice (H)
							i(128947),	-- Pit Lord's Cuffs (A)
							i(133313),	-- Pit Lord's Cuffs (H)
							i(128954),	-- Power Handler's Gloves (A)
							i(133314),	-- Power Handler's Gloves (H)
							i(128955),	-- The Brood Queen's Veil (A)
							i(133310),	-- The Brood Queen's Veil (H)
							i(128952),	-- Torment Ender's Chestguard (A)
							i(133312),	-- Torment Ender's Chestguard (H)
							i(128953),	-- Treads of Illidari Supremacy (A)
							i(133317),	-- Treads of Illidari Supremacy (H)
							i(128944),	-- Voras' Silk Drape
						},
					}),
					n(112407, {	-- Falara Nightsong <Illidari Provisioner>
						["coord"] = { 57.8, 43.5, 720 },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["groups"] = {
							i(147537, {	-- A Tiny Set of Warglaives (TOY!)
								["description"] = "|c808080FAIn order to purchase the toy|r |c00FF96AFTiny Set of Warglaives|r|c808080FA, you must have completed the class mount quest|r |cFFFFD700To Fel and Back|r|c808080FA.\n|c808080FAOnce completed you have to unlock all 52 traits on either spec to be able purchase it.|r",
								["cost"] = { { "c", 1220, 10000 }, },	-- 10,000x Order Resources
							}),
							i(139721, {	-- Belt of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(139716, {	-- Boots of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(139719, {	-- Breeches of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(139717, {	-- Gloves of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(139718, {	-- Helm of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(140936, {	-- Slayer's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140965, {	-- Slayer's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140964, {	-- Slayer's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(133670),	-- Slayer's Tabard
							i(139720, {	-- Spaulders of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(139715, {	-- Vest of the Shattered Abyss
								["cost"] = 5000000,	-- 500g
							}),
							i(140560),	-- Warglaive of the Fel Hammer
							i(139722, {	-- Wristwraps of the Shattered Abyss
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
		cl(DEMONHUNTER, bubbleDownSelf({ ["classes"] = { DEMONHUNTER } }, {
			q(43467),	-- Boarding the Fel Hammer - triggers when entering Mardum for the first time
			q(41129),	-- Demon Hunter Altruis - wrong answer chosen at the violet citadel during "By Any Means"
			q(41045),	-- Matron Moves - triggers after walking into the Fel Hammer
			q(44638),	-- Tracking Quest: 7.0 Class Hall - Demon Hunter - Chapter 1.5 - Pacing Mission — triggers when "Additional Accoutrements" (questID 42682) is completed
			q(44639),	-- Tracking Quest: 7.0 Class Hall - Demon Hunter - Chapter 2 - Story Mission
			q(44640),	-- Tracking Quest: 7.0 Class Hall - Demon Hunter - Tutorial 1 - Spread the Word - Altruis
			q(44641),	-- Tracking Quest: 7.0 Class Hall - Demon Hunter - Tutorial 1 - Spread the Word - Kayn
			q(44597),	-- Tracking Quest: Working with the Wardens 1 - completed the "Working With the Wardens: Isle of the Watchers" mission
			q(44598),	-- Tracking Quest: Working with the Wardens 2 - completed the "Working With the Wardens: Skul'vrax" mission
			q(44599),	-- Tracking Quest: Working with the Wardens 3 - completed the "Working With the Wardens: Mellok, Son of Torok" mission
			q(44600),	-- Tracking Quest: Working with the Wardens 4 - completed the "Working With the Wardens: Fathnyr" mission
			q(44601),	-- Tracking Quest: Working with the Wardens 5 - completed the "Working With the Wardens: Mal'Dreth the Corruptor" mission
			q(44602),	-- Tracking Quest: Preparations for Invasion 1  - completed the "Preparations for Invasion: Scouting their Hold" mission
			q(44604),	-- Tracking Quest: Preparations for Invasion 2 - completed the "Preparations for Invasion: Weapon Improvements" mission
			q(44605),	-- Tracking Quest: Preparations for Invasion 3 - completed the "Preparations for Invasion: Snatch and Grab" mission
			q(44606),	-- Tracking Quest: Preparations for Invasion 4 - completed the "Preparations for Invasion: Ship-Shape" mission
			q(44607),	-- Tracking Quest: Preparations for Invasion 5 - completed the "Preparations for Invasion: Where Are the Felsouls?!" mission
			q(45117, { ["timeline"] = { ADDED_7_2_0 } }),	-- TRACKING - triggered when returning to the Fel Hammer while on "Defense of the Fel Hammer" (questID 45339)
			q(49238),	-- Triggers immediately after completing the "Things Gaardoun Needs" mission
		})),
	}),
})));