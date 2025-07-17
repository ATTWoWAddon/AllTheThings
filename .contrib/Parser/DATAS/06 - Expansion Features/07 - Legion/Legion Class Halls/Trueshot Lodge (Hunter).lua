-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, {
	n(CLASS_HALL, {
		cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
			["maps"] = { TRUESHOT_LODGE },
			["g"] = {
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
						["maps"] = { LEGION_DALARAN },
						["description"] = "This NPC will approach you within a few seconds the first time you enter Legion Dalaran.",
					}),
					q(41415, {	-- The Hunter's Call
						["sourceQuest"] = 40384,	-- Needs of the Hunters
						["provider"] = { "n", 102478 },	-- Emmarel Shadewarden
						["coord"] = { 59.8, 53.0, LEGION_DALARAN },
					}),
					q(40618, {	-- Weapons of Legend
						["sourceQuest"] = 41415,	-- The Hunter's Call
						["provider"] = { "n", 102478 },	-- Emmarel Shadewarden
						["coord"] = { 59.8, 53.0, LEGION_DALARAN },
					}),
					q(44043, {	-- Continuing the Legend
						["sourceQuest"] = 40618,	-- Weapons of Legend
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(44366, {	-- One Last Adventure
						["sourceQuest"] = 44043,	-- Continuing the Legend
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					cl(HUNTER, BEAST_MASTERY, {
						q(41541, {	-- A Beastly Expedition
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 102478 },	-- Emmarel Shadewarden
								{ "n", 107317 },	-- Emmarel Shadewarden
								{ "n", 107973 },	-- Emmarel Shadewarden
							},
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(41574, {	-- Stolen Thunder
							["sourceQuests"] = { 41541 },	-- A Beastly Expedition
							["provider"] = { "n", 104381 },	-- Grif Wildheart
							["coord"] = { 71.2, 50.2, LEGION_DALARAN },
						}),
						q(42158, {	-- The Creator's Workshop
							["sourceQuests"] = { 41574 },	-- Stolen Thunder
							["provider"] = { "n", 106558 },	-- Mimiron
							["coord"] = { 44.9, 37.4, 745 },
						}),
						q(42185, {	-- Never Hunt Alone
							["sourceQuests"] = { 42158 },	-- The Creator's Workshop
							["provider"] = { "n", 106558 },	-- Mimiron
							["coord"] = { 43.7, 38.9, 745 },
							["g"] = {
								i(128861, {	-- Titanstrike
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(288),	--  Titanstrike
									},
								}),
							},
						}),
						q(41009, {	-- Hunter to Hunter
							["sourceQuests"] = { 42185 },	-- Never Hunt Alone
							["altQuests"] = { 40952 },	-- Hunter to Hunter
							["provider"] = { "n", 106879 },	-- Grif Wildheart
							["description"] = "To obtain this quest you must choose to search for the |cffffff9aBeast Mastery|r artifact FIRST.",
							["maps"] = { LEGION_DALARAN },
						}),
					}),
					cl(HUNTER, MARKSMANSHIP, {
						q(41540, {	-- Rendezvous with the Courier
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 102478 },	-- Emmarel Shadewarden
								{ "n", 107317 },	-- Emmarel Shadewarden
								{ "n", 107973 },	-- Emmarel Shadewarden
							},
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(40392, {	-- Call of the Marksman
							["sourceQuests"] = { 41540 },	-- Rendezvous with the Courier
							["providers"] = {
								{ "n", 103415 },	-- Courier Larkspur
								{ "n", 103741 },	-- Courier Larkspur
							},
							["coord"] = { 71.5, 49.8, LEGION_DALARAN },
						}),
						q(40400, {	-- Clandestine Operation (A)
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
						}),
						q(40402, {	-- Clandestine Operation (H, Non-BloodElf)
							["races"] = exclude(BLOODELF, HORDE_ONLY),
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
						}),
						q(40403, {	-- Clandestine Operation (H, BloodElf only)
							["races"] = { BLOODELF },
							["sourceQuests"] = { 40392 },	-- Call of the Marksman
							["provider"] = { "n", 100190 },	-- Vereesa Windrunner
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["maps"] = { 714 },	-- Niskara (Scenario Map)
						}),
						q(40419, {	-- Rescue Mission
							["sourceQuests"] = {
								40400,	-- Clandestine Operation (A)
								40402,	-- Clandestine Operation (H non-BE)
								40403,	-- Clandestine Operation (Blood Elf)
							},
							["provider"] = { "n", 100190 },	-- Vareesa Windrunner
							["coord"] = { 32.3, 32.5, BROKEN_SHORE },
							["g"] = {
								i(128826, {	-- Thas'dorah, Legacy of the Windrunners
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(114),	-- Thas'dorah, Legacy of the Windrunners
									},
								}),
							},
						}),
						q(40952, {	-- Hunter to Hunter
							["sourceQuests"] = { 40419 },	-- Rescue Mission
							["altQuests"] = { 41009 },	-- Hunter to Hunter
							["provider"] = { "n", 102570 },	-- Vereesa Windrunner
							["description"] = "To obtain this quest you must choose to search for the |cffffff9aMarksmanship|r artifact FIRST.",
							["maps"] = { LEGION_DALARAN },
						}),
					}),
					cl(HUNTER, SURVIVAL, {
						q(41542, {	-- Preparation for the Hunt
							["sourceQuests"] = {
								40618,	-- Weapons of Legend
								44043,	-- Continuing the Legend
								44366,	-- One Last Adventure
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 102478 },	-- Emmarel Shadewarden
								{ "n", 107317 },	-- Emmarel Shadewarden
								{ "n", 107973 },	-- Emmarel Shadewarden
							},
							["coords"] = {
								{ 59.8, 53.0, LEGION_DALARAN },
								{ 43.4, 26.4, TRUESHOT_LODGE },
							},
						}),
						q(39427, {	-- The Eagle Spirit's Blessing
							["sourceQuests"] = { 41542 },	-- Preparation for the Hunt
							["provider"] = { "n", 104382 },	-- Apata Highmountain
							["coord"] = { 71.0, 50.0, LEGION_DALARAN },
						}),
						q(40385, {	-- The Spear in the Shadow
							["sourceQuests"] = { 39427 },	-- The Eagle Spirit's Blessing
							["providers"] = {
								{ "n", 110821 },	-- Apata Highmountain
								{ "n", 110986 },	-- Apata Highmountain
							},
							["coord"] = { 60.8, 80.9, HIGHMOUNTAIN },
							["maps"] = { 694 },	-- Helmouth Shallows (Scenario Map)
							["g"] = {
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
						["sourceQuests"] = {
							40952,	-- Hunter to Hunter
							41009,	-- Hunter to Hunter
							40385,	-- The Spear in the Shadow
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 103693 },	-- Outfitter Reynolds
						["coord"] = { 44.6, 49.0, TRUESHOT_LODGE },
						["g"] = {
							i(139710),	-- Mask of the Unseen Path
						},
					}),
					q(40953, {	-- On Eagle's Wings
						["sourceQuests"] = {
							40952,	-- Hunter to Hunter
							41009,	-- Hunter to Hunter
							40385,	-- The Spear in the Shadow
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(40954, {	-- The Unseen Path
						["sourceQuests"] = { 40953 },	-- On Eagle's Wings
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(40955, {	-- Oath of Service
						["sourceQuests"] = { 40954 },	-- The Unseen Path
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(41053, {	-- Altar of the Eternal Hunt
						["sourceQuests"] = { 40955 },	-- Oath of Service
						["provider"] = { "n", 102574 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(41047, {	-- Infused with Power
						["sourceQuests"] = { 41053 },	-- Altar of the Eternal Hunt
						["provider"] = { "n", 102940 },	-- Altar Keeper Biehn
						["coord"] = { 47.8, 52.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Choose Legion Zone
					q(40958, {	-- Tactical Matters
						["sourceQuests"] = {
							-- #IF BEFORE 8.0.1
							41047,	-- Infused with Power
							-- #ELSE
							40955,	-- Oath of Service
							-- #ENDIF
						},
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(40959, {	-- The Campaign Begins
						["sourceQuests"] = { 40958 },	-- Tactical Matters
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					--
					q(42519, {	-- Rise, Champions
						["sourceQuests"] = {
							40959,	-- The Campaign Begins
							44090,	-- Pledge of Loyalty
						},
						["provider"] = { "n", 102940 },	-- Altar Keeper Biehn
						["coord"] = { 47.3, 53.9, TRUESHOT_LODGE },
					}),
					q(40957, {	-- A Strong Right Hand
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["g"] = {
							follower(593),	-- Emmarel Shadewarden
						},
					}),
					q(42409, {	-- Champion: Loren Stormhoof
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["provider"] = { "n", 107315 },	-- Loren Stormhoof <Skyhorn Emissary>
						["coord"] = { 52.0, 55.6, TRUESHOT_LODGE },
						["g"] = {
							follower(742),	-- Loren Stormhoof
						},
					}),
					q(42523, {	-- Making Contact
						["sourceQuests"] = { 42519 },	-- Rise, Champions
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42524, {	-- Recruiting The Troops
						["sourceQuests"] = { 42523 },	-- Making Contact
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42525, {	-- Troops in the Field
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42526, {	-- Tech It Up A Notch
						["sourceQuests"] = { 42525 },	-- Troops in the Field
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					-- Chap 1
					q(42384, {	-- Scouting Reports
						["sourceQuests"] = { 42526 },	-- Tech It Up A Notch
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42385, {	-- Lending a Hand
						["sourceQuests"] = { 42384 },	-- Scouting Reports
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42386, {	-- Rising Troubles
						["sourceQuests"] = { 42385 },	-- Lending a Hand
						["provider"] = { "n", 107372 },	-- Hudson Crawford
						["coord"] = { 41.7, 60.0, VALSHARAH },
					}),
					q(42387, {	-- Assassin Entrapment
						["sourceQuests"] = { 42385 },	-- Lending a Hand
						["provider"] = { "n", 107372 },	-- Hudson Crawford
						["coord"] = { 41.7, 60.0, VALSHARAH },
					}),
					q(42388, {	-- Urgent Summons
						["sourceQuests"] = {
							42387,	-- Assassin Entrapment
							42386,	-- Rising Troubles
						},
						["provider"] = { "n", 113325 },	-- Snowfeather
						["coord"] = { 41.7, 59.9, VALSHARAH },
					}),
					q(42389, {	-- Calling Hilaire Home
						["sourceQuests"] = { 42388 },	-- Urgent Summons
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42391, {	-- Bite of the Beast
						["sourceQuests"] = { 42389 },	-- Calling Hilaire Home
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["coord"] = { 34.7, 41.6, STORMHEIM },
					}),
					q(42411, {	-- Champion: Beastmaster Hilaire
						["sourceQuests"] = { 42391 },	-- Bite of the Beast
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["coord"] = { 34.7, 41.6, STORMHEIM },
						["g"] = {
							follower(744),	-- Beastmaster Hilaire
						},
					}),
					q(42393, {	-- Homecoming
						["sourceQuests"] = { 42411 },	-- Champion: Beastmaster Hilaire
						["provider"] = { "n", 107316 },	-- Beastmaster Hilaire
						["coord"] = { 34.7, 41.6, STORMHEIM },
						["g"] = {
							artifact(454),	-- Titanstrike
							artifact(211),	-- Thas'dorah, Legacy of the Windrunners
							artifact(469),	-- Talonclaw
						},
					}),
					-- Chap 2
					q(42390, {	-- Recruiting Rexxar
						["sourceQuests"] = { 42388 },	-- Urgent Summons
						["provider"] = { "n", 107317 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(43335, {	-- Survival Skills
						["sourceQuests"] = { 42390 },	-- Recruiting Rexxar
						["provider"] = { "n", 107425 },	-- Rexxar
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
					}),
					q(42392, {	-- Survive the Night
						["sourceQuests"] = { 43335 },	-- Survival Skills
						["provider"] = { "n", 107425 },	-- Rexxar
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
					}),
					q(42410, {	-- Champion: Rexxar
						["sourceQuests"] = { 42392 },	-- Survive the Night
						["provider"] = { "n", 107425 },	-- Rexxar
						["coord"] = { 36.7, 35.4, HIGHMOUNTAIN },
						["g"] = {
							follower(743),	-- Rexxar
						},
					}),
					q(42395, {	-- Signaling Trouble
						["sourceQuests"] = { 42393 },	-- Homecoming
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					-- Chap 3
					q(42394, {	-- Unseen Protection
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42134, {	-- Recruiting More Troops
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42436, {	-- Aiding Our Allies
						["sourceQuests"] = { 42395 },	-- Signaling Trouble
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42928, {	-- Silkweave Bandages
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42929, {	-- Highmountain Salmon
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42930, {	-- Big Gamy Ribs
						["sourceQuests"] = { 42436 },	-- Aiding Our Allies
						["provider"] = { "n", 109227 },	-- Mellah Greyfeather
						["coord"] = { 53.0, 44.5, HIGHMOUNTAIN },
						["repeatable"] = true,	-- Aiding Our Allies
					}),
					q(42403, {	-- Highmountain Hunters
						["isBreadcrumb"] = true,
						["sourceQuests"] = { 42394 },	-- Unseen Protection
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
						["coord"] = { 42.9, 46.9, TRUESHOT_LODGE },
					}),
					q(42414, {	-- Champion: Addie Fizzlebog
						["sourceQuests"] = {
							42403,	-- Highmountain Hunters
							40228,	-- Scout It Out
						},
						["provider"] = { "n", 99095 },	-- Addie Fizzlebog
						["coord"] = { 39.9, 52.2, HIGHMOUNTAIN },
						["g"] = {
							follower(746),	-- Addie Fizzlebog
							i(139714),	-- Wristwraps of the Unseen Path
						},
					}),
					q(42413, {	-- Champion: Hemet Nesingwary
						["sourceQuests"] = {
							42403,	-- Highmountain Hunters
							40228,	-- Scout It Out
						},
						["provider"] = { "n", 94409 },	-- Hemet Nesingwary
						["coord"] = { 40.0, 52.2, HIGHMOUNTAIN },
						["g"] = {
							follower(745),	-- Hemet Nesingwary
						},
					}),
					q(42397, {	-- Baron and the Huntsman
						["sourceQuests"] = { 42394 },	-- Unseen Protection
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 41.6, 74.8, TRUESHOT_LODGE },
					}),
					q(42398, {	-- Awakening the Senses
						["sourceQuests"] = { 42397 },	-- Baron and the Huntsman
						["provider"] = { "n", 107981 },	-- Huntsman Blake
						["coord"] = { 80.1, 66.2, STORMHEIM },
					}),
					q(42412, {	-- Champion: Huntsman Blake
						["sourceQuests"] = { 42398 },	-- Awakening the Senses
						["provider"] = { "n", 107981 },	-- Huntsman Blake <Beastmaster>
						["coord"] = { 80.1, 66.2, STORMHEIM },
						["g"] = {
							follower(747),	-- Huntsman Blake
						},
					}),
					q(42399, {	-- Ready to Work
						["sourceQuests"] = { 42412 },	-- Champion: Huntsman Blake
						["provider"] = { "n", 107981 },	-- Huntsman Blake <Beastmaster>
						["coord"] = { 80.1, 66.2, STORMHEIM },
					}),
					q(42400, {	-- Missing Mages
						["sourceQuests"] = { 42399 },	-- Ready to Work
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42401, {	-- The Scent of Magic
						["sourceQuest"] = 42400,	-- Missing Mages
						["provider"] = { "n", 107966 },	-- Archmage Khadgar
						["coord"] = { 38.1, 47.1, SURAMAR },
					}),
					q(42404, {	-- Assisting the Archmage
						["sourceQuest"] = 42401,	-- The Scent of Magic
						["provider"] = { "n", 108089 },	-- Archmage Khadgar
						["coord"] = { 33.1, 57.0, SURAMAR },
					}),
					q(42689, {	-- Knowing Our Enemy
						["sourceQuests"] = { 42404 },	-- Assisting the Archmage
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.3, TRUESHOT_LODGE },
					}),
					q(42691, {	-- Leystone Lure
						["sourceQuests"] = { 42689 },	-- Knowing Our Enemy
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					q(42406, {	-- To Tame the Beast
						["sourceQuests"] = { 42691 },	-- Leystone Lure
						["provider"] = { "n", 105816 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					q(42407, {	-- The Nature of the Beast
						["sourceQuests"] = { 42406 },	-- To Tame the Beast
						["provider"] = { "n", 108375 },	-- Kira Iresoul
						["coord"] = { 60.8, 30.7, AZSUNA },
					}),
					-- Chap 4
					q(42402, {	-- Requesting Reinforcements
						["sourceQuests"] = { 42407 },	-- The Nature of the Beast
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42405, {	-- Informing Our Allies
						["sourceQuests"] = { 42402 },	-- Requesting Reinforcements
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42654, {	-- Darkheart Thicket: Nightmare Oak
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(42655, {	-- Ore Under the Sea
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(43182, {	-- The Missing Vessel
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["provider"] = { "n", 107966 },	-- Archmage Khadgar
						["coord"] = { 42.9, 25.4, TRUESHOT_LODGE },
					}),
					q(42408, {	-- Required Reagents
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
					}),
					q(44680, {	-- Leading by Example
						["sourceQuests"] = { 42405 },	-- Informing Our Allies
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
					}),
					q(42656, {	-- Azure Weaponry
						["sourceQuests"] = {
							42654,	-- Darkheart Thicket: Nightmare Oak
							42655,	-- Ore Under the Sea
						},
						["provider"] = { "n", 108456 },	-- Halduron Brightwing
						["coord"] = { 43.1, 6.1, TRUESHOT_LODGE },
					}),
					q(42657, {	-- Meeting in Moonclaw Vale
						["sourceQuests"] = {
							42656,	-- Azure Weaponry
							42408,	-- Required Reagents
						},
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
					}),
					q(42658, {	-- Delicate Enchantments
						["sourceQuests"] = { 42657 },	-- Meeting in Moonclaw Vale
						["provider"] = { "n", 108492 },	-- Lyana Stardust
						["coord"] = { 60.1, 72.2, VALSHARAH },
					}),
					q(42133, {	-- Same Day Delivery
						["sourceQuests"] = { 42658 },	-- Delicate Enchantments
						["provider"] = { "n", 108492 },	-- Lyana Stardust
						["coord"] = { 60.1, 72.2, VALSHARAH },
					}),
					q(42659, {	-- In Defense of Dalaran
						["sourceQuests"] = {
							43182,	-- The Missing Vessel
							44680,	-- Leading by Example
							42133,	-- Same Day Delivery
						},
						["provider"] = { "n", 107973 },	-- Emmarel Shadewarden
						["coord"] = { 43.4, 26.4, TRUESHOT_LODGE },
						["maps"] = { 723 },	-- Violet Hold (Scenario Map)
						["g"] = {
							i(139707),	-- Hauberk of the Unseen Path
							title(335),	-- Huntmaster <Name>
						},
					}),
					q(42415, {	-- Champion: Halduron Brightwing
						["sourceQuests"] = { 42659 },	-- In Defense of Dalaran
						["provider"] = { "n", 108620 },	-- Halduron Brightwing <Ranger-General of the Farstriders>
						["coord"] = { 49.9, 65.7, 723 },
						["g"] = {
							follower(748),	-- Halduron Brightwing
						},
					}),
					q(44090, {	-- Pledge of Loyalty
						["sourceQuests"] = { 40959 },	-- The Campaign Begins
						["provider"] = { "n", 113327 },	-- Snowfeather
						["maps"] = { LEGION_DALARAN },
						["isBreadcrumb"] = true,
						["description"] = "After completing |cffffff00The Campaign Begins|r, return to Dalaran and this NPC will approach you within a few seconds.",
					}),
					q(43423, {	-- A Hero's Weapon
						["sourceQuests"] = { 42659 },	-- In Defense of Dalaran
						["provider"] = { "n", 110505 },	-- Emmarel Shadewarden
						["coord"] = { 47.7, 49.3, TRUESHOT_LODGE },
						["g"] = {
							artifact(448),	-- Titanstrike
							artifact(223),	-- Thas'dorah, Legacy of the Windrunners
							artifact(475),	-- Talonclaw
						},
					}),
					-- Interlude
					q(46022, {	-- An Urgent Warning
						["sourceQuest"] = 43423,	-- A Hero's Weapon
						["provider"] = { "n", 118429 },	-- Injured Archer
						["coord"] = { 49.0, 45.2, TRUESHOT_LODGE },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(46023, {	-- Investigate the Broken Shore
						["sourceQuest"] = 46022,	-- An Urgent Warning
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell <Unseen Path>
						["coord"] = { 43.0, 46.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45551, {	-- Devastating Effects
						["sourceQuests"] = {
							-- #IF AFTER 7.2.0
							43423,	-- A Hero's Weapon
							-- #ELSE
							46023,	-- Investigate the Broken Shore
							-- #ENDIF
							47137,	-- Champions of Legionfall
						},
						["provider"] = { "n", 108455 },	-- Shandris Feathermoon
						["coord"] = { 46.4, 34.8, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45552, {	-- Soothing Wounds
						["sourceQuests"] = { 45551 },	-- Devastating Effects
						["provider"] = { "n", 117308 },	-- D'Bynn
						["coord"] = { 52.2, 48.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(143788),	-- Manaroot (QI!)
						},
					}),
					q(45553, {	-- The Nighthuntress Beckons
						["sourceQuests"] = { 45552 },	-- Soothing Wounds
						["provider"] = { "n", 117308 },	-- D'Bynn
						["coord"] = { 52.2, 48.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45554, {	-- Taking Control
						["sourceQuests"] = { 45553 },	-- The Nighthuntress Beckons
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["coord"] = { 57.5, 44.8, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(143830),	-- Relyn's Control Orb (QI!)
						},
					}),
					q(45555, {	-- Felbound Beasts
						["sourceQuests"] = { 45554 },	-- Taking Control
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["coord"] = { 57.5, 44.8, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45556, {	-- Ready to Strike
						["sourceQuests"] = { 45555 },	-- Felbound Beasts
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["coord"] = { 55.8, 42.2, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46060, {	-- Salvation
						["sourceQuests"] = { 45556 },	-- Ready to Strike
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45557, {	-- Unnatural Consequences
						["sourceQuests"] = { 45556 },	-- Ready to Strike
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46235, {	-- Secured Surroundings
						["sourceQuests"] = {
							46060,	-- Salvation
							45557,	-- Unnatural Consequences
						},
						["provider"] = { "n", 119097 },	-- Nighthuntress Syrenne
						["coord"] = { 50.9, 30.7, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46048, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Nighthuntress Syrenne
						["sourceQuests"] = { 46235 },	-- Secured Surroundings
						["provider"] = { "n", 117246 },	-- Nighthuntress Syrenne
						["coord"] = { 44.8, 61.1, BROKEN_SHORE },
						["g"] = {
							follower(996),	-- Nighthuntress Syrenne
						},
					})),
					q(46336, {	-- A Golden Ticket
						["sourceQuests"] = { 46048 },	-- Champion: Nighthuntress Syrenne
						["provider"] = { "n", 117810 },	-- Nimi Brightcastle
						["coord"] = { 43.8, 63.2, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46337, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Night of the Wilds
						["sourceQuests"] = { 46336 },	-- A Golden Ticket
						["provider"] = { "n", 119943 },	-- Golden Letter
						["coord"] = { 42.9, 45.7, TRUESHOT_LODGE },
						["maps"] = { 877 },	-- Fields of the Eternal Hunt (Scenario Map)
						["g"] = {
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
						["sourceQuest"] = 41009,	-- Hunter to Hunter
						["provider"] = { "n", 110424 },	-- Image of Mimiron
						["coord"] = { 44.4, 45.0, TRUESHOT_LODGE },
						["g"] = {
							i(138393),	-- Essence Swapper
						},
					}),
					q(43880, {	-- Hitting the Books
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46130, {	-- Knowledge is Power
						["sourceQuest"] = 43880,	-- Hitting the Books
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46149, {	-- Furthering Knowledge
						["sourceQuest"] = 46130,	-- Knowledge is Power
						["provider"] = { "n", 98737 },	-- Holt Thunderhorn <Lore and Legends>
						["coord"] = { 52.8, 55.0, TRUESHOT_LODGE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46783, {	-- Further Advancement
						["sourceQuests"] = { 46048 },	-- Champion: Nighthuntress Syrenne
						["provider"] = { "n", 103023 },	-- Tactician Tinderfell
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
						["sourceQuests"] = {
							54913,	-- Spark of Genius
							55516,	-- Spark of Genius
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 149736 },	-- Image of Mimiron
						["coord"] = { 37.5, 46.5, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(54916, {	-- The Huntsman's Creed
						["sourceQuest"] = 54915,	-- Telemetry Online
						["provider"] = { "n", 149736 },	-- Image of Mimiron
						["coord"] = { 37.5, 46.5, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
						["g"] = {
							i(166895),	-- Thunderspark (QI!)
						},
					}),
					q(54917, {	-- Paid in Blood
						["sourceQuest"] = 54916,	-- The Huntsman's Creed
						["provider"] = { "n", 149870 },	-- Grif Wildheart
						["coord"] = { 33.6, 58.6, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
						["g"] = {
							i(167061),	-- Thunderspark (QI!)
						},
					}),
					q(54918, {	-- Spark of Imagination
						["sourceQuest"] = 54917,	-- Paid in Blood
						["provider"] = { "n", 150391 },	-- Image of Mimiron
						["coord"] = { 39.3, 71.7, SILITHUS },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(54919, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- Bonds of Thunder
						["sourceQuest"] = 54918,	-- Spark of Imagination
						["provider"] = { "n", 151061 },	-- Mimiron
						["coord"] = { 43.3, 38.8, 745 },
						["g"] = {
							spell(292689),	-- Hati Reborn
						},
					})),
					q(54920, {	-- Homeward Bound
						["sourceQuest"] = 54919,	-- Bonds of Thunder
						["provider"] = { "n", 151061 },	-- Mimiron
						["coord"] = { 43.3, 38.8, 745 },
						["timeline"] = { ADDED_8_1_5 },
					}),
					q(55195, {	-- Reverberation
						["sourceQuest"] = 54920,	-- Homeward Bound
						["provider"] = { "n", 29445 },	-- Thorim
						["coord"] = { 33.4, 58.0, THE_STORM_PEAKS },
						["timeline"] = { ADDED_8_1_5 },
					}),
				}),
				n(SPECIAL, {
					n(100633, {	-- Death Hunter Moorgoth <Hunters of Death>
						["crs"] = { 105099 },	-- Dark Ranger Velonara
						["coord"] = { 52.6, 50.3, TRUESHOT_LODGE },
						["description"] = "|c808080FAHunters will need to have completed the hidden quest|r |cFFFFD700Dark Memento|r |c808080FAin order to see items on this vendor.|r\n\n|cffff0000How to activate the quest:|r\n|c0070DEFFStep 1:|r\n|c808080FASpeak to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA and complete the dialogue with him.\n|c0070DEFFStep 2:|r\n|c808080FABuy 13x|r |cFFFFFFFFBlack Roses|r|c808080FA from him.\n|c0070DEFFStep 3:|r\n|c808080FASpeak to|r |cABD473FFDark Ranger Velonara|r |c808080FA and complete the dialogue with her.  Afterwards she will take the 13 |r|cFFFFFFFFBlack Roses|r|c808080FA from you.\n|c0070DEFFStep 4:|r\n|c808080FAGo back and speak to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA who will finish the story between the two.  Once doing this he will no longer sell you anything.\n|c0070DEFFStep 5:|r\n|c808080FFFind|r |cABD473FFDark Ranger Velonara|r |c808080FA who will offer the quest, |r|cFFFFD700Dark Memento|r.\n|c0070DEFFStep 6:|r\n|c808080FAAccept the quest and then deliver the hood to|r |cABD473FFDeath Hunter Moorgoth|r |c808080FA.\n|c0070DEFFStep 7:|r\n|c808080FAUpon finishing that quest he will now offer you the two items.",
						["g"] = {
							i(143663, {	-- Dark Ranger's Hood
								["timeline"] = { ADDED_7_1_0 },
							}),
						},
					}),
					gt(378, {	-- Fletchery
						q(44211, {	-- Unseen Armaments
							["sourceQuest"] = 42526,	-- Tech It Up A Notch
							["provider"] = { "n", 110412 },	-- Berger the Steadfast
							["coord"] = { 58.4, 48.4, TRUESHOT_LODGE },
						}),
					}),
					gt(377, {	-- Unseen Path
						q(44212, {	-- Unseen Fate
							["sourceQuest"] = 42526,	-- Tech It Up A Notch
							["provider"] = { "n", 110816 },	-- Tu'Las the Gifted
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
						["g"] = {
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
						["g"] = {
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
						["g"] = {
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