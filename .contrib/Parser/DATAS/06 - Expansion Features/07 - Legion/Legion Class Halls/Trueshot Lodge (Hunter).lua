-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, {
	n(CLASS_HALL, {
		cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
			["maps"] = { TRUESHOT_LODGE },
			["groups"] = {
				n(ARTIFACTS, {
					cl(HUNTER, BEAST_MASTERY, {
						i(139555, {	-- Designs of the Grand Architect
							artifact(918),	-- Titanstrike
						}),
					}),
					cl(HUNTER, MARKSMANSHIP, {
						i(139556, {	-- Syriel Crescentfall's Notes: Ravenguard
							artifact(224),	-- Thas'dorah, Legacy of the Windrunners
						}),
					}),
					cl(HUNTER, SURVIVAL, {
						i(139557, {	-- Last Breath of the Forest
							artifact(473),	-- Talonclaw
						}),
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(1760, {	-- Trueshot Lodge, Highmountain
						["coord"] = { 36.0, 27.8, TRUESHOT_LODGE },
					}),
					fp(1848, {	-- Trueshot Lodge (Eagle)
						["coord"] = { 39.8, 29.6, TRUESHOT_LODGE },
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(671),	-- Squad of Archers
					follower(801),	-- Squad of Archers
					follower(802),	-- Squad of Archers
					follower(803),	-- Squad of Archers
					follower(799),	-- Unseen Marksmen
					follower(804),	-- Unseen Marksmen
					follower(805),	-- Unseen Marksmen
					follower(806),	-- Unseen Marksmen
					follower(672),	-- Band of Trackers
					follower(808),	-- Band of Trackers
					follower(809),	-- Band of Trackers
					follower(810),	-- Band of Trackers
					follower(800),	-- Pathfinders
					follower(811),	-- Pathfinders
					follower(812),	-- Pathfinders
					follower(813),	-- Pathfinders
					follower(1023),	-- Nightborne Hunters
					follower(1024),	-- Nightborne Hunters
					follower(1025),	-- Nightborne Hunters
					follower(1026),	-- Nightborne Hunters
				})),
				n(QUESTS, {
					q(40384, {	-- Needs of the Hunters
						["provider"] = { "n", 100786 },	-- Snowfeather
						["description"] = "This NPC will approach you within a few seconds the first time you enter Legion Dalaran.",
						["maps"] = { LEGION_DALARAN },
					}),
					q(41415, {	-- The Hunter's Call
						["provider"] = { "n", 102478 },	-- Emmarel Shadewarden
						["sourceQuest"] = 40384,	-- Needs of the Hunters
						["coord"] = { 59.8, 53.0, LEGION_DALARAN },
					}),
					q(40618, {	-- Weapons of Legend
						["provider"] = { "n", 102478 },	-- Emmarel Shadewarden
						["sourceQuest"] = 41415,	-- The Hunter's Call
						["coord"] = { 59.8, 53.0, LEGION_DALARAN },
					}),
					q(44043, {	-- Continuing the Legend
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["sourceQuest"] = 40618,	-- Weapons of Legend
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(44366, {	-- One Last Adventure
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuest"] = 44043,	-- Continuing the Legend
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					cl(HUNTER, BEAST_MASTERY, {
						q(41541, {	-- A Beastly Expedition
							["qgs"] = {
								102478,	-- Emmarel Shadewarden
								107317,	-- Emmarel Shadewarden
								107973,	-- Emmarel Shadewarden
							},
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(41574, {	-- Stolen Thunder
							["provider"] = { "n", 104381 },	-- Grif Wildheart
							["sourceQuests"] = { 41541 },	-- A Beastly Expedition
							["coord"] = { 71.2, 50.2, LEGION_DALARAN },
						}),
						q(42158, {	-- The Creator's Workshop
							["provider"] = { "n", 106558 },	-- Mimiron
							["sourceQuests"] = { 41574 },	-- Stolen Thunder
							["coord"] = { 44.9, 37.4, 745 },
						}),
						q(42185, {	-- Never Hunt Alone
							["provider"] = { "n", 106558 },	-- Mimiron
							["sourceQuests"] = { 42158 },	-- The Creator's Workshop
							["coord"] = { 43.7, 38.9, 745 },
							["groups"] = {
								i(128861, {	-- Titanstrike
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(288),	--  Titanstrike
									},
								}),
							},
						}),
						q(41009, {	-- Hunter to Hunter
							["provider"] = { "n", 106879 },	-- Grif Wildheart
							["altQuests"] = { 40952 },	-- Hunter to Hunter
							["sourceQuests"] = { 42185 },	-- Never Hunt Alone
							["description"] = "To obtain this quest you must choose to search for the |cffffff9aBeast Mastery|r artifact FIRST.",
							["maps"] = { LEGION_DALARAN },
						}),
					}),
					cl(HUNTER, MARKSMANSHIP, {
						q(41540, {	-- Rendezvous with the Courier
							["qgs"] = {
								102478,	-- Emmarel Shadewarden
								107317,	-- Emmarel Shadewarden
								107973,	-- Emmarel Shadewarden
							},
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(40392, {	-- Call of the Marksman
							["qgs"] = {
								103415,	-- Courier Larkspur
								103741,	-- Courier Larkspur
							},
							["sourceQuests"] = { 41540 },	-- Rendezvous with the Courier
							["coord"] = { 71.5, 49.8, LEGION_DALARAN },
						}),
						q(40400, {	-- Clandestine Operation (A)
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
							["races"] = ALLIANCE_ONLY,
						}),
						q(40402, {	-- Clandestine Operation (H, Non-BloodElf)
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
							["races"] = exclude(BLOODELF, HORDE_ONLY),
						}),
						q(40403, {	-- Clandestine Operation (H, BloodElf only)
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
							["races"] = { BLOODELF },
						}),
						q(40419, {	-- Rescue Mission
							["provider"] = { "n", 100190 },	-- Vareesa Windrunner
							["sourceQuests"] = {
								40400,	-- Clandestine Operation (A)
								40402,	-- Clandestine Operation (H non-BE)
								40403,	-- Clandestine Operation (Blood Elf)
							},
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["groups"] = {
								i(128826, {	-- Thas'dorah, Legacy of the Windrunners
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(114),	-- Thas'dorah, Legacy of the Windrunners
									},
								}),
							},
						}),
						q(40952, {	-- Hunter to Hunter
							["provider"] = { "n", 102570 },	-- Vereesa Windrunner
							["altQuests"] = { 41009 },	-- Hunter to Hunter
							["sourceQuests"] = { 40419 },	-- Rescue Mission
							["description"] = "To obtain this quest you must choose to search for the |cffffff9aMarksmanship|r artifact FIRST.",
							["maps"] = { LEGION_DALARAN },
						}),
					}),
					cl(HUNTER, SURVIVAL, {
						q(41542, {	-- Preparation for the Hunt
							["qgs"] = {
								102478,	-- Emmarel Shadewarden
								107317,	-- Emmarel Shadewarden
								107973,	-- Emmarel Shadewarden
							},
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(39427, {	-- The Eagle Spirit's Blessing
							["provider"] = { "n", 104382 },	-- Apata Highmountain
							["sourceQuests"] = { 41542 },	-- Preparation for the Hunt
							["coord"] = { 71.0, 50.0, LEGION_DALARAN },
						}),
						q(40385, {	-- The Spear in the Shadow
							["qgs"] = {
								110821,	-- Apata Highmountain
								110986,	-- Apata Highmountain
							},
							["sourceQuests"] = { 39427 },	-- The Eagle Spirit's Blessing
							["coord"] = { 60.8, 80.9, HIGHMOUNTAIN },
							["maps"] = { 694 },	-- Helmouth Shallows (Scenario Map)
							["groups"] = {
								i(128808, {	-- Talonclaw
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(125),	-- Talonclaw
									},
								}),
							},
						}),
					}),
					q(44233, {	-- Walk This Way
						["provider"] = { "n", 103693 },	-- Outfitter Reynolds
						["sourceQuests"] = {
							40952,	-- Hunter to Hunter
							41009,	-- Hunter to Hunter
							40385,	-- The Spear in the Shadow
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 44.6, 49.0, TRUESHOT_LODGE },
						["groups"] = {
							i(139710),	-- Mask of the Unseen Path
						},
					}),
					q(40953, {	-- On Eagle's Wings
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["sourceQuests"] = {
							40952,	-- Hunter to Hunter
							41009,	-- Hunter to Hunter
							40385,	-- The Spear in the Shadow
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(40954, {	-- The Unseen Path
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 40953 },	-- On Eagle's Wings
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(40955, {	-- Oath of Service
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 40954 },	-- The Unseen Path
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(41053, {	-- Altar of the Eternal Hunt
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 40955 },	-- Oath of Service
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(41047, {	-- Infused with Power
						["provider"] = { "n", 102940 },	-- Altar Keeper Biehn
						["sourceQuests"] = { 41053 },	-- Altar of the Eternal Hunt
						["coord"] = { 47.8, 52.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Choose Legion Zone
					q(40958, {	-- Tactical Matters
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = {
							-- #IF BEFORE 8.0.1
							41047,	-- Infused with Power
							-- #ELSE
							40955,	-- Oath of Service
							-- #ENDIF
						},
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(40959, {	-- The Campaign Begins
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 40958 },	-- Tactical Matters
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					--
					q(42519, {	-- Rise, Champions
						["provider"] = { "n", 102940 },	-- Altar Keeper Biehn
						["sourceQuests"] = {
							40959,	-- The Campaign Begins
							44090,	-- Pledge of Loyalty
						},
						["coord"] = { 47.3, 53.9, TRUESHOT_LODGE },
					}),
					q(40957, {	-- A Strong Right Hand
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["groups"] = {
							follower(593),	-- Emmarel Shadewarden
						},
					}),
					q(42409, {	-- Champion: Loren Stormhoof
						["provider"] = { "n", 107315 },	-- Loren Stormhoof <Skyhorn Emissary>
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["coord"] = { 52.0, 55.6, TRUESHOT_LODGE },
						["groups"] = {
							follower(742),	-- Loren Stormhoof
						},
					}),
					q(42523, {	-- Making Contact
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42524, {	-- Recruiting The Troops
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42523 },	-- Making Contact
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42525, {	-- Troops in the Field
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42526, {	-- Tech It Up A Notch
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42525 },	-- Troops in the Field
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					-- Chap 1
					q(42384, {	-- Scouting Reports
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42526 },	-- Tech It Up A Notch
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42385, {	-- Lending a Hand
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42384 },	-- Scouting Reports
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42386, {	-- Rising Troubles
						["provider"] = { "n", 107372 },	-- Hudson Crawford
						["sourceQuests"] = { 42385 },	-- Lending a Hand
						["coord"] = { 41.7, 60.0, VALSHARAH },
					}),
					q(42387, {	-- Assassin Entrapment
						["provider"] = { "n", 107372 },	-- Hudson Crawford
						["sourceQuests"] = { 42385 },	-- Lending a Hand
						["coord"] = { 41.7, 60.0, VALSHARAH },
					}),
					q(42388, {	-- Urgent Summons
						["provider"] = { "n", 113325 },	-- Snowfeather
						["sourceQuests"] = {
							42387,	-- Assassin Entrapment
							42386,	-- Rising Troubles
						},
						["coord"] = { 41.7, 59.9, VALSHARAH },
					}),
					q(42389, {	-- Calling Hilaire Home
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42388 },	-- Urgent Summons
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42391, {	-- Bite of the Beast
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["sourceQuests"] = { 42389 },	-- Calling Hilaire Home
						["coord"] = { 34.7, 41.6, STORMHEIM },
					}),
					q(42411, {	-- Champion: Beastmaster Hilaire
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["sourceQuests"] = { 42391 },	-- Bite of the Beast
						["coord"] = { 34.7, 41.6, STORMHEIM },
						["groups"] = {
							follower(744),	-- Beastmaster Hilaire
						},
					}),
					q(42393, {	-- Homecoming
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["sourceQuests"] = { 42411 },	-- Champion: Beastmaster Hilaire
						["coord"] = { 34.7, 41.6, STORMHEIM },
						["groups"] = {
							artifact(454),	-- Titanstrike
							artifact(211),	-- Thas'dorah, Legacy of the Windrunners
							artifact(469),	-- Talonclaw
						},
					}),
					-- Chap 2
					q(42390, {	-- Recruiting Rexxar
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42388 },	-- Urgent Summons
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(43335, {	-- Survival Skills
						["provider"] = { "n", 107425 },	-- Rexxar
						["sourceQuests"] = { 42390 },	-- Recruiting Rexxar
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
					}),
					q(42392, {	-- Survive the Night
						["provider"] = { "n", 107425 },	-- Rexxar
						["sourceQuests"] = { 43335 },	-- Survival Skills
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
					}),
					q(42410, {	-- Champion: Rexxar
						["provider"] = { "n", 107425 },	-- Rexxar
						["sourceQuests"] = { 42392 },	-- Survive the Night
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
						["groups"] = {
							follower(743),	-- Rexxar
						},
					}),
					q(42395, {	-- Signaling Trouble
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42393 },	-- Homecoming
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					-- Chap 3
					q(42394, {	-- Unseen Protection
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42134, {	-- Recruiting More Troops
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42436, {	-- Aiding Our Allies
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42928, {	-- Silkweave Bandages
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42929, {	-- Highmountain Salmon
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42930, {	-- Big Gamy Ribs
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42403, {	-- Highmountain Hunters
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 42394 },	-- Unseen Protection
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
						["isBreadcrumb"] = true,
					}),
					q(42414, {	-- Champion: Addie Fizzlebog
						["provider"] = { "n", 99095 },	-- Addie Fizzlebog
						["sourceQuests"] = {
							42403,	-- Highmountain Hunters
							40228,	-- Scout It Out
						},
						["coord"] = { 39.9, 52.2, HIGHMOUNTAIN },
						["groups"] = {
							follower(746),	-- Addie Fizzlebog
							i(139714),	-- Wristwraps of the Unseen Path
						},
					}),
					q(42413, {	-- Champion: Hemet Nesingwary
						["provider"] = { "n", 94409 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							42403,	-- Highmountain Hunters
							40228,	-- Scout It Out
						},
						["coord"] = { 40.0, 52.2, HIGHMOUNTAIN },
						["groups"] = {
							follower(745),	-- Hemet Nesingwary
						},
					}),
					q(42397, {	-- Baron and the Huntsman
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42394 },	-- Unseen Protection
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42398, {	-- Awakening the Senses
						["provider"] = { "n", 107981 },	-- Huntsman Blake
						["sourceQuests"] = { 42397 },	-- Baron and the Huntsman
						["coord"] = { 80.1, 66.2, STORMHEIM },
					}),
					q(42412, {	-- Champion: Huntsman Blake
						["provider"] = { "n", 107981 },	-- Huntsman Blake <Beastmaster>
						["sourceQuests"] = { 42398 },	-- Awakening the Senses
						["coord"] = { 80.1, 66.2, STORMHEIM },
						["groups"] = {
							follower(747),	-- Huntsman Blake
						},
					}),
					q(42399, {	-- Ready to Work
						["provider"] = { "n", 107981 },	-- Huntsman Blake <Beastmaster>
						["sourceQuests"] = { 42412 },	-- Champion: Huntsman Blake
						["coord"] = { 80.1, 66.2, STORMHEIM },
					}),
					q(42400, {	-- Missing Mages
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42399 },	-- Ready to Work
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42401, {	-- The Scent of Magic
						["provider"] = { "n", 107966 },	-- Archmage Khadgar
						["sourceQuest"] = 42400,	-- Missing Mages
						["coord"] = { 38.1, 47.1, SURAMAR },
					}),
					q(42404, {	-- Assisting the Archmage
						["provider"] = { "n", 108089 },	-- Archmage Khadgar
						["sourceQuest"] = 42401,	-- The Scent of Magic
						["coord"] = { 33.1, 57.0, SURAMAR },
					}),
					q(42689, {	-- Knowing Our Enemy
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42404 },	-- Assisting the Archmage
						["coord"] = { 43.4, 26.3, TRUESHOT_LODGE },
					}),
					q(42691, {	-- Leystone Lure
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 42689 },	-- Knowing Our Enemy
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					q(42406, {	-- To Tame the Beast
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["sourceQuests"] = { 42691 },	-- Leystone Lure
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					q(42407, {	-- The Nature of the Beast
						["provider"] = { "n", 108375 },	-- Kira Iresoul
						["sourceQuests"] = { 42406 },	-- To Tame the Beast
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					-- Chap 4
					q(42402, {	-- Requesting Reinforcements
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42407 },	-- The Nature of the Beast
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42405, {	-- Informing Our Allies
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42402 },	-- Requesting Reinforcements
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42654, {	-- Darkheart Thicket: Nightmare Oak
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(42655, {	-- Ore Under the Sea
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(43182, {	-- The Missing Vessel
						["provider"] = { "n", 107966 },	-- Archmage Khadgar
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["coord"] = { 42.9, 25.4, TRUESHOT_LODGE },
					}),
					q(42408, {	-- Required Reagents
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
					}),
					q(44680, {	-- Leading by Example
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42656, {	-- Azure Weaponry
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["sourceQuests"] = {
							42654,	-- Darkheart Thicket: Nightmare Oak
							42655,	-- Ore Under the Sea
						},
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(42657, {	-- Meeting in Moonclaw Vale
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["sourceQuests"] = {
							42656,	-- Azure Weaponry
							42408,	-- Required Reagents
						},
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
					}),
					q(42658, {	-- Delicate Enchantments
						["provider"] = { "n", 108492 },	-- Lyana Stardust
						["sourceQuests"] = { 42657 },	-- Meeting in Moonclaw Vale
						["coord"] = { 60.1, 72.2, VALSHARAH },
					}),
					q(42133, {	-- Same Day Delivery
						["provider"] = { "n", 108492 },	-- Lyana Stardust
						["sourceQuests"] = { 42658 },	-- Delicate Enchantments
						["coord"] = { 60.1, 72.2, VALSHARAH },
					}),
					q(42659, {	-- In Defense of Dalaran
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["sourceQuests"] = {
							43182,	-- The Missing Vessel
							44680,	-- Leading by Example
							42133,	-- Same Day Delivery
						},
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["maps"] = { 723 },	-- Violet Hold (Scenario Map)
						["groups"] = {
							i(139707),	-- Hauberk of the Unseen Path
							title(335),	-- Huntmaster <Name>
						},
					}),
					q(42415, {	-- Champion: Halduron Brightwing
						["provider"] = { "n", 108620 },	-- Halduron Brightwing <Ranger-General of the Farstriders>
						["sourceQuests"] = { 42659 },	-- In Defense of Dalaran
						["coord"] = { 49.9, 65.7, 723 },
						["groups"] = {
							follower(748),	-- Halduron Brightwing
						},
					}),
					q(44090, {	-- Pledge of Loyalty
						["provider"] = { "n", 113327 },	-- Snowfeather
						["sourceQuests"] = { 40959 },	-- The Campaign Begins
						["description"] = "After completing |cffffff00The Campaign Begins|r, return to Dalaran and this NPC will approach you within a few seconds.",
						["maps"] = { LEGION_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(43423, {	-- A Hero's Weapon
						["provider"] = { "n", 110505 },	-- Emmarel Shadewarden
						["sourceQuests"] = { 42659 },	-- In Defense of Dalaran
						["coord"] = { 47.7, 49.3, TRUESHOT_LODGE },
						["groups"] = {
							artifact(448),	-- Titanstrike
							artifact(223),	-- Thas'dorah, Legacy of the Windrunners
							artifact(475),	-- Talonclaw
						},
					}),
					-- Interlude
					q(46022, {	-- An Urgent Warning
						["provider"] = { "n", 118429 },	-- Injured Archer
						["sourceQuest"] = 43423,	-- A Hero's Weapon
						["coord"] = { 49.0, 45.2, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
						["isBreadcrumb"] = true,
					}),
					q(46023, {	-- Investigate the Broken Shore
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell <Unseen Path>
						["sourceQuest"] = 46022,	-- An Urgent Warning
						["coord"] = { 43.0, 46.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45551, {	-- Devastating Effects
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["sourceQuests"] = {
							-- #IF AFTER 7.2.0
							43423,	-- A Hero's Weapon
							-- #ELSE
							46023,	-- Investigate the Broken Shore
							-- #ENDIF
							47137,	-- Champions of Legionfall
						},
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45552, {	-- Soothing Wounds
						["provider"] = { "n", 117308 },	-- D'Bynn
						["sourceQuests"] = { 45551 },	-- Devastating Effects
						["coord"] = { 52.2, 48.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							i(143788),	-- Manaroot (QI!)
						},
					}),
					q(45553, {	-- The Nighthuntress Beckons
						["provider"] = { "n", 117308 },	-- D'Bynn
						["sourceQuests"] = { 45552 },	-- Soothing Wounds
						["coord"] = { 52.2, 48.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45554, {	-- Taking Control
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 45553 },	-- The Nighthuntress Beckons
						["coord"] = { 57.5, 44.8, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							i(143830),	-- Relyn's Control Orb (QI!)
						},
					}),
					q(45555, {	-- Felbound Beasts
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 45554 },	-- Taking Control
						["coord"] = { 57.5, 44.8, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45556, {	-- Ready to Strike
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 45555 },	-- Felbound Beasts
						["coord"] = { 55.8, 42.2, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46060, {	-- Salvation
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 45556 },	-- Ready to Strike
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45557, {	-- Unnatural Consequences
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 45556 },	-- Ready to Strike
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46235, {	-- Secured Surroundings
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["sourceQuests"] = {
							46060,	-- Salvation
							45557,	-- Unnatural Consequences
						},
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46048, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Nighthuntress Syrenne
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["sourceQuests"] = { 46235 },	-- Secured Surroundings
						["coord"] = { 44.8, 61.1, BROKEN_SHORE },
						["groups"] = {
							follower(996),	-- Nighthuntress Syrenne
						},
					})),
					q(46336, {	-- A Golden Ticket
						["provider"] = { "n", 117810 },	-- Nimi Brightcastle
						["sourceQuests"] = { 46048 },	-- Champion: Nighthuntress Syrenne
						["coord"] = { 43.8, 63.2, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46337, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Night of the Wilds
						["provider"] = { "n", 119943 },	-- Golden Letter
						["sourceQuests"] = { 46336 },	-- A Golden Ticket
						["coord"] = { 42.9, 45.7, TRUESHOT_LODGE },
						["maps"] = { 877 },	-- Fields of the Eternal Hunt (Scenario Map)
						["groups"] = {
							mount(229386),	-- Huntmaster's Loyal Wolfhawk (MOUNT!)
						},
					})),
					-- Misc
					q(45392, {	-- Dark Memento
						["provider"] = { "n", 105099 },	-- Dark Ranger Velonara
						["coord"] = { 49.4, 49.7, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_0 },
					}),
					q(43370, {	-- A New Invention
						["provider"] = { "n", 110424 },	-- Image of Mimiron
						["sourceQuest"] = 41009,	-- Hunter to Hunter
						["coord"] = { 44.4, 45.0, TRUESHOT_LODGE },
						["groups"] = {
							i(138393),	-- Essence Swapper
						},
					}),
					q(43880, {	-- Hitting the Books
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46130, {	-- Knowledge is Power
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["sourceQuest"] = 43880,	-- Hitting the Books
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46149, {	-- Furthering Knowledge
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["sourceQuest"] = 46130,	-- Knowledge is Power
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46783, {	-- Further Advancement
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["sourceQuests"] = { 46048 },	-- Champion: Nighthuntress Syrenne
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					-- Hunter Hati Reborn Questline (BfA)
					q(54913, {	-- Spark of Genius
						["provider"] = { "n", 152002 },	-- Image of Mimiron
						["coords"] = {
							{ 72.8, 14.0, BORALUS },
							{ 47.8, 89.4, DAZARALOR },
						},
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(55516, {	-- Spark of Genius
						["provider"] = { "n", 152002 },	-- Image of Mimiron
						["coords"] = {
							{ 72.8, 14.0, BORALUS },
							{ 47.8, 89.4, DAZARALOR },
						},
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(54915, {	-- Telemetry Online
						["provider"] = { "n", 149736 },	-- Image of Mimiron
						["sourceQuests"] = {
							54913,	-- Spark of Genius
							55516,	-- Spark of Genius
						},
						["sourceQuestNumRequired"] = 1,
						["coord"] = { 37.5, 46.5, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(54916, {	-- The Huntsman's Creed
						["provider"] = { "n", 149736 },	-- Image of Mimiron
						["sourceQuest"] = 54915,	-- Telemetry Online
						["coord"] = { 37.5, 46.5, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
						["groups"] = {
							i(166895),	-- Thunderspark (QI!)
						},
					}),
					q(54917, {	-- Paid in Blood
						["provider"] = { "n", 149870 },	-- Grif Wildheart
						["sourceQuest"] = 54916,	-- The Huntsman's Creed
						["coord"] = { 33.6, 58.6, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
						["groups"] = {
							i(167061),	-- Thunderspark (QI!)
						},
					}),
					q(54918, {	-- Spark of Imagination
						["provider"] = { "n", 150391 },	-- Image of Mimiron
						["sourceQuest"] = 54917,	-- Paid in Blood
						["coord"] = { 39.3, 71.7, SILITHUS },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(54919, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Bonds of Thunder
						["provider"] = { "n", 151061 },	-- Mimiron
						["sourceQuest"] = 54918,	-- Spark of Imagination
						["coord"] = { 43.3, 38.8, 745 },
						["groups"] = {
							spell(292689),	-- Hati Reborn
						},
					})),
					q(54920, {	-- Homeward Bound
						["provider"] = { "n", 151061 },	-- Mimiron
						["sourceQuest"] = 54919,	-- Bonds of Thunder
						["coord"] = { 43.3, 38.8, 745 },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(55195, {	-- Reverberation
						["provider"] = { "n", 29445 },	-- Thorim
						["sourceQuest"] = 54920,	-- Homeward Bound
						["coord"] = { 33.4, 58.0, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
					}),
				}),
				n(SPECIAL, {
					n(100633, {	-- Death Hunter Moorgoth <Hunters of Death>
						["crs"] = { 105099 },	-- Dark Ranger Velonara
						["coord"] = { 52.6, 50.3, TRUESHOT_LODGE },
						["description"] = "|c808080FAHunters will need to have completed the hidden quest|r |cFFFFD700Dark Memento|r |c808080FAin order to see items on this vendor.|r\n\n|cffff0000How to activate the quest:|r\n|c0070DEFFStep 1:|r\n|c808080FASpeak to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA and complete the dialogue with him.\n|c0070DEFFStep 2:|r\n|c808080FABuy 13x|r |cFFFFFFFFBlack Roses|r|c808080FA from him.\n|c0070DEFFStep 3:|r\n|c808080FASpeak to|r |cABD473FFDark Ranger Velonara|r |c808080FA and complete the dialogue with her.  Afterwards she will take the 13 |r|cFFFFFFFFBlack Roses|r|c808080FA from you.\n|c0070DEFFStep 4:|r\n|c808080FAGo back and speak to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA who will finish the story between the two.  Once doing this he will no longer sell you anything.\n|c0070DEFFStep 5:|r\n|c808080FFFind|r |cABD473FFDark Ranger Velonara|r |c808080FA who will offer the quest, |r|cFFFFD700Dark Memento|r.\n|c0070DEFFStep 6:|r\n|c808080FAAccept the quest and then deliver the hood to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA.\n|c0070DEFFStep 7:|r\n|c808080FAUpon finishing that quest he will now offer you the two items.",
						["groups"] = {
							i(143663, {	-- Dark Ranger's Hood
								["timeline"] = { ADDED_7_1_0 },
							}),
						},
					}),
					gt(378, {	-- Fletchery
						q(44211, {	-- Unseen Armaments
							["provider"] = { "n", 110412 },	-- Berger the Steadfast
							["sourceQuest"] = 42526,	-- Tech It Up A Notch
							["coord"] = { 58.4, 48.4, TRUESHOT_LODGE },
						}),
					}),
					gt(377, {	-- Unseen Path
						q(44212, {	-- Unseen Fate
							["provider"] = { "n", 110816 },	-- Tu'Las the Gifted
							["sourceQuest"] = 42526,	-- Tech It Up A Notch
							["coord"] = { 43.4, 48.2, TRUESHOT_LODGE },
						}),
					}),
					gt(375, {	-- Eagle Ally
						i(140216),	-- Eagle Feather
					}),
				}),
				n(VENDORS, {
					n(103693, {	-- Outfitter Reynolds <Unseen Path>
						["coord"] = { 44.6, 48.8, TRUESHOT_LODGE },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["groups"] = {
							i(139713, {	-- Belt of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							iensemble(191658, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5 } }, {	-- Ensemble: Dark Ranger's Attire
								["sourceQuests"] = {
									65788,	-- A Walk with Ghosts
									65669,	-- Report to Greymane
								},
								["cost"] = 10000000,	-- 1000g
							})),
							i(139709, {	-- Grips of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(139707, {	-- Hauberk of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(136855, {	-- Hunter's Call (TOY!)
								["timeline"] = { ADDED_7_0_3 },
								["cost"] = 500000,	-- 50g
							}),
							i(140938, {	-- Huntmaster's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140969, {	-- Huntmaster's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140548),	-- Huntmaster's Halberd
							i(140968, {	-- Huntmaster's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(140539),	-- Huntmaster's Longbow
							i(140544),	-- Huntmaster's Rifle
							i(139711, {	-- Leggings of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(139710, {	-- Mask of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(136781),	-- Pet Training Manual: Fetch (CI!)
							i(136780),	-- Pet Training Manual: Play Dead (CI!)
							i(139712, {	-- Spaulders of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(139708, {	-- Treads of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
							i(139714, {	-- Wristwraps of the Unseen Path
								["cost"] = 5000000,	-- 500g
							}),
						},
					}),
					n(100661, {	--  Pan the Kind Hand <Stable Master>
						["sourceQuests"] = { 46337 },	-- Night of the Wilds
						["coord"] = { 58.8, 31.8, TRUESHOT_LODGE },
						["groups"] = {
							i(147580, {	-- Tome of the Hybrid Beast (CI!)
								["sourceQuest"] = 46337,	-- Night of the Wilds
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
							i(142228, {	-- Huntmaster's Dire Wolfhawk (MOUNT!)
								["sourceQuest"] = 46337,	-- Night of the Wilds
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
							i(142226, {	-- Huntmaster's Fierce Wolfhawk (MOUNT!)
								["sourceQuest"] = 46337,	-- Night of the Wilds
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
						},
					}),
					n(103325, {	-- Uthrok
						["coord"] = { 58.9, 50.1, TRUESHOT_LODGE },
						["groups"] = {
							i(11304, {	-- Fine Bow
								["isLimited"] = true,
							}),
						},
					}),
				}),
			},
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
			q(43366),	-- Talked With Mimiron
			q(43158),	-- Tracking Quest - conversation flag for a hidden romance quest
			q(43159),	-- Tracking Quest - triggered after Death Hunter Moorgoth / Dark Ranger Velonara stories
			q(44702),	-- Tracking Quest - triggered after Death Hunter Moorgoth / Dark Ranger Velonara stories
			q(44643),	-- Tracking Quest: 7.0 Class Hall - Hunter - Pacing Mission 1 (JAP)
			q(44644),	-- Tracking Quest: 7.0 Class Hall - Hunter - Pacing Mission 3a (JAP)
			q(44333),	-- Tracking Quest: The Missing Vessel 1 - completed the "The Missing Vessel: Highmountain" mission
			q(44334),	-- Tracking Quest: The Missing Vessel 2 - completed the "The Missing Vessel: Stormheim" mission
			q(44335),	-- Tracking Quest: The Missing Vessel 3 - completed the "The Missing Vessel: Val'sharah" mission
			q(44336),	-- Tracking Quest: The Missing Vessel 4 - completed the "The Missing Vessel: Azsuna" mission
			q(44391),	-- Tracking Quest: Unseen Protection 1 - completed the "Unseen Protection: Defending Dalaran" mission
			q(44392),	-- Tracking Quest: Unseen Protection 2 - completed the "Unseen Protection: The Mother of Imps" mission
			q(44393),	-- Tracking Quest: Unseen Protection 3 - completed the "Unseen Protection: Infernal Waves" mission
			q(44394),	-- Tracking Quest: Unseen Protection 4 - completed the "Unseen Protection: Coastal Invasion" mission
			q(44395),	-- Tracking Quest: Unseen Protection 5 - completed the "Unseen Protection: Drogbar Delicacy" mission
		})),
	}),
})));