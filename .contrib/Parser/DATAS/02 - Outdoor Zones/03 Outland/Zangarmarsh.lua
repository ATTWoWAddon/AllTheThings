---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- CRIEVE NOTE: Dredgers at Honored in Retail? They go to Exalted in TBC Classic. (someone test this on Retail)
ExportDB.OnTooltipDB.ForSporeggar = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if not t.plight then
			local f = _.SearchForField("questID", 9739);
			if f and #f > 0 then t.plight = f[1]; end
		end
		if not t.natenemies then
			local f = _.SearchForField("questID", 9743);
			if f and #f > 0 then t.natenemies = f[1]; end
		end
		if not t.plight.saved then _.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.plight); end
		if not t.natenemies.saved then _.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.natenemies); end

		if reputation < ]] .. REVERED .. [[ then
			addRepInfo(tooltipInfo, reputation, "Kill Bog Lords. (To Revered)", 15, ]] .. REVERED .. [[);
		end

		addRepInfo(tooltipInfo, reputation, "Kill Dredgers & Lurkers.", 15, ]] .. EXALTED .. [[);

		if reputation < ]] .. FRIENDLY .. [[ then
			addRepInfo(tooltipInfo, reputation, "Turn in Spore Sacs (x10) (To Friendly)", 250, ]] .. FRIENDLY .. [[);
			addRepInfo(tooltipInfo, reputation, "Turn in Tendrils (x6) (To Friendly)", 750, ]] .. FRIENDLY .. [[);
		end

		if reputation >= ]] .. NEUTRAL .. [[ then
			if reputation < ]] .. FRIENDLY .. [[ then
				addRepInfo(tooltipInfo, reputation, "Turn in Glowcap (x10) (To Friendly)", 250, ]] .. FRIENDLY .. [[);
			end
			addRepInfo(tooltipInfo, reputation, "Turn in Fertile Spores (x6)", 750, ]] .. EXALTED .. [[);
			addRepInfo(tooltipInfo, reputation, "Turn in Sanguine Hibiscus (x5)", 750, ]] .. EXALTED .. [[);
		end
	end
end]];
root(ROOTS.Zones, {
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(ZANGARMARSH, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
			["lore"] = "Zangarmarsh is a leveling zone intended to be completed after Hellfire Peninsula. It is a surreal swamp, with neon giant mushrooms and hostile naga. The Cenarion Circle is investigating why wildlife has been dying, discovering that Lady Vashj is draining Coilfang Reservoir for her nefarious purposes. Players can also gain reputation with Sporeggar, a group of sporelings at war with ogres. Alliance players also further learn about lost ones--Draenei heavily corrupted by shadow magic--and begin gaining reputation with the Kurenai.",
			["icon"] = 236855,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(863),	-- Explore Zangarmarsh
					ach(1190, {	-- Mysteries of the Marsh
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							-- Draenei Diplomacy (A)
							9803,	-- Messenger to the Feralfen

							-- Swamprat Post (H)
							9899,	-- A Job Undone
							9772,	-- Jyoba's Report
							9898,	-- The Respect of Another
							9769,	-- There's No Explanation for Fashion

							-- Telredor (A)
							9783,	-- An Unnatural Drought
							-- TODO:  verify below
							9896,	-- Blacksting's Bane
							9790,	-- Diaphanous Wings
							9777,	-- Fulgor Spores
							9780,	-- Umbrafen Eel Filets

							-- Zabra'jin (H)
							9816,	-- Have You Ever Seen One of These?
							9904,	-- Pursuing Terrorclaw
							-- TODO:  verify below
							9847,	-- A Spirit Ally? (probably)
							9903,	-- The Biggest of Them All (probably)
							9842,	-- The Sharpest Blades (probably)

							-- Orebor Harborage (A)
							9902,	-- The Terror of Marshlight Lake
							-- TODO:  verify below
							10115,	-- Daggerfen Deviance
							9905,	-- Maktu's Revenge
							9839,	-- Overlord Gorefist
							9848,	-- Secrets of the Daggerfen
							9830,	-- Stinger Venom
							9833,	-- Lines of Communication

							-- The Defense of Zabra'jin (H)
							10118,	-- Message to the Daggerfen
							9823,	-- Us or Them

							-- Don't Eat THOSE Mushrooms!
							9709,	-- Stealing Back the Mushrooms

							-- Draining the Marsh
							9732,	-- Return to the Marsh

							-- Saving the Sporeloks
							9788,	-- A Damp, Dark Place
							9894,	-- Safeguarding the Watchers
							10096,	-- Saving the Sporeloks

							-- A Trip With the Sporelings
							9726,	-- Now That We're Friends...
							9919,	-- Sporeggar
							9729,	-- Fhwoor Smash!
						},
						-- #endif
					}),
					applyclassicphase(TBC_PHASE_ONE, achWithReps(953, { FACTION_CENARION_CIRCLE, FACTION_CENARION_EXPEDITION }, {	-- Guardian of Cenarius
						-- NOTE: Achievement says it awards 132, but that's wrong.
						applyclassicphase(WRATH_PHASE_ONE, title(100)),	-- %, Guardian of Cenarius
					})),
					achWithRep(900, FACTION_SPOREGGAR, {	-- The Czar of Sporeggar
						["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						419,	-- Small Frog (PET!)
						387,	-- Snake (PET!)
					}},
					["groups"] = {
						pet(515, {	-- Sporeling Sprout (PET!)
							["coord"] = { 20.0, 51.6, ZANGARMARSH },
							-- #if BEFORE 5.3.0
							["description"] = "Found only in Sporeggar. Requires FRIENDLY reputation with the Sporeggar faction.",
							["minReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly
							-- #else
							["description"] = "Found only in Sporeggar.",	-- The reputation requirement got removed in a late MoP patch, but can't find any confirmation on which one. Working assumption is 5.3.0 which brough battle pets to TBC raids.
							-- #endif
						}),
					},
				}),
				explorationHeader({
					exploration(3650),	-- Ango'rosh Grounds
					exploration(3651),	-- Ango'rosh Stronghold
					visit_exploration(3643,{coord={27.2,42.4,ZANGARMARSH}}),	-- Bloodscale Enclave
					exploration(3818),	-- Bloodscale Grounds
					exploration(3668),	-- Boha'mu Ruins
					exploration(3565),	-- Cenarion Refuge
					exploration(3895),	-- Cenarion Watchpost
					exploration(3905),	-- Coilfang Reservoir
					exploration(3640),	-- Daggerfen Village
					exploration(3819),	-- Darkcrest Enclave
					visit_exploration(3841,{coord={70.1,81.1,ZANGARMARSH}}),	-- Darkcrest Shore
					exploration(3642),	-- Feralfen Village
					exploration(3667),	-- Hewn Bog
					exploration(3656),	-- Marshlight Lake
					exploration(3766),	-- Orebor Harborage
					exploration(3657),	-- Portal Clearing
					exploration(3646),	-- Quagg Ridge
					exploration(3653),	-- Serpent Lake
					exploration(3649),	-- Sporeggar
					exploration(3658),	-- Sporewind Lake
					exploration(3718),	-- Swamprat Post
					exploration(3644),	-- Telredor
					exploration(3648),	-- The Dead Mire
					exploration(3659),	-- The Lagoon
					exploration(3647),	-- The Spawning Glen
					exploration(3720),	-- Twin Spire Ruins
					exploration(3655),	-- Umbrafen Lake
					exploration(3641),	-- Umbrafen Village
					visit_exploration(3645,{coord={32.2,50.6,ZANGARMARSH}}),	-- Zabra'jin
				}),
				n(FACTIONS, {
					faction(FACTION_CENARION_EXPEDITION, {	-- Cenarion Expedition
						["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS, COILFANG_RESERVOIR_STEAMVAULT, COILFANG_RESERVOIR_UNDERBOG },
					}),
					faction(FACTION_SPOREGGAR, {	-- Sporeggar
						["OnTooltip"] = [[_.OnTooltipDB.ForSporeggar]],
						["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(164, {	-- Orebor Harborage, Zangarmarsh
						["cr"] = 22485,	-- Halu <Hippogryph Master>
						["coord"] = { 41.2, 28.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(151, {	-- Swamprat Post, Zangarmarsh
						["cr"] = 20762,	-- Gur'zil <Wind Rider Master>
						["coord"] = { 84.8, 55.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
					}),
					fp(117, {	-- Telredor, Zangarmarsh
						["cr"] = 18788,	-- Munci <Hippogryph Master>
						["coord"] = { 67.8, 51.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(118, {	-- Zabra'jin, Zangarmarsh
						["cr"] = 18791,	-- Du'ga <Wind Rider Master>
						["coord"] = { 33.0, 51.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
					}),
				}),
				header(HEADERS.Spell, 1810,	 {	-- Lockpicking
					o(184740),	-- Wicker Chest
				}),
				petbattles({
					n(66551, {	-- Ras'an <Master Pet Tamer>
						["coord"] = { 17.2, 50.6, ZANGARMARSH },
						["description"] = "Ras'an's pets are level 21 of the following consecutive pet classes:\n1. Flying - use Magic (powerful) or Dragonkin (tanky) pet.\n2. Magic - use Dragonkin (powerful) or Mechanical (tanky) pet.\n3. Humanonoid - use Undead (powerful) or Beast (tanky) pet.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Ageless Bronze Drake and Blighted Squirrel.",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 21,
						["groups"] = {
							q(31923, {	-- Ras'an
								["sourceAchievement"] = 6604,	-- Taming Outland
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
							}),
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(FISHING, {
						n(18911, {	-- Juno Dufrain <Fishing Trainer>
							["coord"] = { 78.0, 66.0, ZANGARMARSH },
							["groups"] = TBC_FISHING,
						}),
						i(34469, {	-- Strange Engine Part
							["description"] = "\"Don't pay anybody in advance. And don't ride in anything with a Capissen 38 engine, they fall right out of the sky.\" - Kaylee Fry",
							["provider"] = { "o", 182952 },	-- Steam Pump Flotsam
						}),
					}),
				}),
				n(QUESTS, {
					q(50130, {	-- A Friendly Gesture
						["sourceQuest"] = 9919,	-- Sporeggar
						["qg"] = 17924,	-- Msshi'fn
						["coord"] = { 19.7, 52.1, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, NEUTRAL },	-- Sporeggar, Neutral.
						["maxReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["timeline"] = { ADDED_7_3_5 },
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.5 },	-- Sporeggar, Friendly
						-- #endif
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(50131, {	-- An Outside Perspective
						["sourceQuests"] = {
							9743,	-- Natural Enemies
							9739,	-- The Sporelings' Plight
						},
						["qg"] = 17923,	-- Fahssn
						["coord"] = { 19.0, 63.4, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, UNFRIENDLY },	-- Sporeggar, Unfriendly.
						["maxReputation"] = { FACTION_SPOREGGAR, NEUTRAL },	-- Sporeggar, Neutral.
						["timeline"] = { ADDED_7_3_5 },
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.4 },	-- Sporeggar, Neutral
						-- #endif
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9788, {	-- A Damp, Dark Place
						["sourceQuest"] = 9747,	-- The Umbrafen Tribe
						["qg"] = 17956,	-- Ikeyen
						["coord"] = { 80.4, 64.2, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Ikeyen's Belongings
								["providers"] = {
									{ "i",  24411 },	-- Ikeyen's Belongings
									{ "o", 182122 },	-- Ikeyen's Belongings
								},
								["coord"] = { 70.6, 97.9, ZANGARMARSH },
							}),
							i(25516),	-- Ikeyen's Boots
							i(25514),	-- Ikeyen's Pauldrons
							i(25515),	-- Mud Encrusted Boots
							i(27716),	-- Refuge Armor
						},
					}),
					q(9899, {	-- A Job Undone
						["sourceQuest"] = 9773,	-- No More Mushrooms!
						["qg"] = 18016,	-- Magasha
						["coord"] = { 84.4, 54.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- Sporewing slain
								["provider"] = { "n", 18280 },	-- Sporewing
								["coord"] = { 76.8, 46.0, ZANGARMARSH },
							}),
						},
					}),
					q(9792, {	-- A Message to Telaar
						["qg"] = 18008,	-- Ikuti
						["minReputation"] = { FACTION_KURENAI, NEUTRAL },	-- Kurenai, Neutral.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(64, 64, 10),
					}),
					q(9702, {	-- A Question of Gluttony
						["sourceQuest"] = 9701,	-- Observing the Sporelings
						["qg"] = 17831,	-- Watcher Leesa'oh
						["coord"] = { 23.3, 66.2, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Discarded Nutriment
								["providers"] = {
									{ "i", 24233 },	-- Discarded Nutriment
									{ "o", 182256 },	-- Discarded Nutriment
									{ "o", 182031 },	-- Discarded Nutriment
								},
								["coord"] = { 29.6, 65.3, ZANGARMARSH },
							}),
						},
					}),
					q(9847, {	-- A Spirit Ally?
						["sourceQuest"] = 9846,	-- Spirits of the Feralfen
						["qg"] = 18017,	-- Seer Janidi
						["coord"] = { 32.4, 52.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- Summon Serpent Spirit
								["provider"] = { "i", 24498 },	-- Feralfen Totem
								["coord"] = { 44.2, 66.6, ZANGARMARSH },
								["cr"] = 18185,	-- Feralfen Serpent Spirit
							}),
							i(25620),	-- Ancient Crystal Talisman
							i(31770),	-- Marsh Bracers
							i(25621),	-- Serpent Spirit's Drape
						},
					}),
					q(9728, {	-- A Warm Welcome
						["sourceQuest"] = 9778,	-- Warden Hamoot
						["qg"] = 17858,	-- Warden Hamoot
						["coord"] = { 79.1, 65.3, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- 0/30 Naga Claws
								["provider"] = { "i", 24280 },	-- Naga Claws
								["crs"] = {
									18087,	-- Darkcrest Siren
									19946,	-- Darkcrest Slaver
									19947,	-- Darkcrest Sorceress
									18086,	-- Darkcrest Taskmaster
									18088,	-- Bloodscale Enchantress
									20088,	-- Bloodscale Overseer
									18089,	-- Bloodscale Slavedriver
									20089,	-- Bloodscale Wavecaller
									18046,	-- Rajah Haghazed
									18044,	-- Rajis Fyashe
									18340,	-- Steam Pump Overseer
								},
							}),
						},
					}),
					q(9783, {	-- An Unnatural Drought
						["sourceQuest"] = 9782,	-- The Dead Mire
						["qg"] = 18004,	-- Vindicator Idaar
						["coord"] = { 68.2, 50.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/12 Withered Giant slain
								["provider"] = { "n", 18124 },	-- Withered Giant
								["coord"] = { 81.0, 42.0, ZANGARMARSH },
							}),
							i(25599),	-- Explorer's Bands
							i(25598),	-- Fen Strider's Bracer
							i(31659),	-- Researcher's Mantle
							i(25597),	-- Vindicator's Cinch
						},
					}),
					q(9845, {	-- Angling to Beat the Competition
						["qg"] = 18018,	-- Zurjaya
						["coord"] = { 32.2, 49.6, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Fenclaw Thrasher slain
								["provider"] = { "n", 18214 },	-- Fenclaw Thrasher
								["coord"] = { 49.0, 41.8, ZANGARMARSH },
							}),
						},
					}),
					q(9835, {	-- Ango'rosh Encroachment
						["qg"] = 18008,	-- Ikuti
						["coord"] = { 41.8, 27.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/5 Ango'rosh Shaman slain
								["provider"] = { "n", 18118 },	-- Ango'rosh Shaman
								["coord"] = { 33.0, 33.6, ZANGARMARSH },
							}),
							objective(2, {	-- 0/10 Ango'rosh Ogre slain
								["provider"] = { "n", 18117 },	-- Ango'rosh Ogre
								["coord"] = { 36.6, 31.6, ZANGARMARSH },
							}),
						},
					}),
					q(9718, {	-- As the Crow Flies
						["sourceQuest"] = 9716,	-- Disturbance at Umbrafen Lake
						["qg"] = 17841,	-- Ysiel Windsinger
						["coord"] = { 78.4, 62.0, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- Lakes of Zangarmarsh Explored
								["provider"] = { "i", 25465 },	-- Stormcrow Amulet
							}),
						},
					}),
					q(9720, {	-- Balance Must Be Preserved
						["sourceQuest"] = 9718,	-- As the Crow Flies
						["qg"] = 17841,	-- Ysiel Windsinger
						["coord"] = { 78.4, 62.0, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- Umbrafen Lake Controls Disabled
								["provider"] = { "i", 24355 },	-- Ironvine Seeds
								["coord"] = { 70.0, 80.0, ZANGARMARSH },
							}),
							objective(2, {	-- Marshlight Lake Controls Disabled
								["provider"] = { "i", 24355 },	-- Ironvine Seeds
								["coord"] = { 25.0, 43.0, ZANGARMARSH },
							}),
							objective(3, {	-- Serpent Lake Controls Disabled
								["provider"] = { "i", 24355 },	-- Ironvine Seeds
								["coord"] = { 62.0, 41.0, ZANGARMARSH },
							}),
							objective(4, {	-- Lagoon Controls Disabled
								["provider"] = { "i", 24355 },	-- Ironvine Seeds
								["coord"] = { 63.0, 64.0, ZANGARMARSH },
							}),
						},
					}),
					q(9896, {	-- Blacksting's Bane
						["sourceQuest"] = 9901,	-- Unfinished Business
						["qg"] = 18295,	-- Prospector Conall
						["coord"] = { 68.6, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Blacksting's Stinger
								["provider"] = { "i", 25448 },	-- Blacksting's Stinger
								["coord"] = { 49.8, 59.6, ZANGARMARSH },
								["cr"] = 18283,	-- Blacksting
							}),
							i(31788),	-- Blacksting Gloves
							i(31786),	-- Blacksting Shoulders
							i(31789),	-- Marshfang Boots
							i(31787),	-- Stalwart Girdle
						},
					}),
					q(9785, {	-- Blessings of the Ancients
						["qg"] = 18070,	-- Windcaller Blackhoof
						["coord"] = { 80.4, 64.7, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- Mark of Lore
								["provider"] = { "n", 17900 },	-- Ashyen <Ancient of Lore>
								["coord"] = { 81.0, 64.0, ZANGARMARSH },
							}),
							objective(2, {	-- Mark of War
								["provider"] = { "n", 17901 },	-- Keleth <Ancient of War>
								["coord"] = { 79.0, 67.6, ZANGARMARSH },
							}),
						},
					}),
					q(9814, {	-- Burstcap Mushrooms, Mon!
						["qg"] = 18014,	-- Witch Doctor Tor'gash
						["coord"] = { 32.9, 48.9, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/6 Burstcap Mushroom
								["providers"] = {
									{ "i",  24468 },	-- Burstcap Mushroom
									{ "o", 182095 },	-- Burstcap Mushroom
								},
								["coord"] = { 28.5, 52.5, ZANGARMARSH },
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10994, {	-- Chasing the Moonstone
						["sourceQuest"] = 10993,	-- Return to Cenarion Refuge
						["qg"] = 22832,	-- Morthis Whisperwing <Druid of the Talon>
						["coord"] = { 80.2, 65.2, ZANGARMARSH },
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { AZSHARA },
						["classes"] = { DRUID },
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Southfury Moonstone
								["providers"] = {
									{ "i",  32364 },	-- Southfury Moonstone
									{ "o", 185566 },	-- Southfury Moonstone
								},
								["description"] = "Jump into the water and catch Rizzle Sprysprocket by using aquatic form to race down the river avoiding the depth charges she leaves behind.",
								["coord"] = { 14.2, 47.8, AZSHARA },
							}),
						},
					})),
					q(9766, {	-- Coilfang Armaments
						["sourceQuest"] = 9765,	-- Preparing for War
						["qg"] = 17841,	-- Ysiel Windsinger
						["maxReputation"] = { FACTION_CENARION_EXPEDITION, EXALTED },	-- Cenarion Expedition, Exalted.
						["timeline"] = { REMOVED_4_3_0 },
						["maps"] = { COILFANG_RESERVOIR_STEAMVAULT },
						["cost"] = { { "i", 24368, 1 } },	-- Coilfang Armaments
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 942.8 },	-- Cenarion Expedition, Exalted
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(67, 67, 20),
					}),
					q(10115, {	-- Daggerfen Deviance
						["qg"] = 18008,	-- Ikuti
						["coord"] = { 41.8, 27.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/3 Daggerfen Assassin slain
								["provider"] = { "n", 18116 },	-- Daggerfen Assassin
								["coord"] = { 25.6, 25.8, ZANGARMARSH },
							}),
							objective(2, {	-- 0/15 Daggerfen Muckdweller slain
								["provider"] = { "n", 18115 },	-- Daggerfen Muckdweller
								["coord"] = { 25.6, 25.0, ZANGARMARSH },
							}),
						},
					}),
					q(9790, {	-- Diaphanous Wings
						["sourceQuest"] = 9781,	-- Too Many Mouths to Feed
						["qg"] = 18005,	-- Haalrun
						["coord"] = { 67.8, 48.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Diaphanous Wing
								["provider"] = { "i", 24372 },	-- Diaphanous Wing
								["crs"] = {
									20197,	-- Bogflare Needler
									20198,	-- Fenglow Stinger
									18133,	-- Marshlight Bleeder
									18132,	-- Umbraglow Stinger
									18283,	-- Blacksting
								},
							}),
						},
					}),
					q(9716, {	-- Disturbance at Umbrafen Lake
						["sourceQuests"] = {
							9912,	-- The Cenarion Expedition
							-- #if AFTER 6.2.0.19953
							39181,	-- Hero's Call: Zangarmarsh!
							39180,	-- Warchief's Command: Zangarmarsh!
							-- #endif
						},
						["qg"] = 17841,	-- Ysiel Windsinger
						["coord"] = { 78.4, 62.0, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9731, {	-- Drain Schematics
						["description"] = "Must have accepted or completed |cFFFFD700Balance Must Be Preserved|r to start this quest.",
						["sourceQuest"] = 9718,	-- Balance Must Be Preserved
						["provider"] = { "i", 24330 },	-- Drain Schematics
						["cr"] = 18340,	-- Steam Pump Overseer
						["lvl"] = lvlsquish(59, 59, 10),
						["groups"] = {
							i(27734),	-- Expedition Caster's Band
							i(27735),	-- Pendant of the Marsh
							i(27733),	-- Warden's Ring of Precision
							i(27730),	-- Watcher's Cloak of Vigilance
						},
					}),
					q(9752, {	-- Escape from Umbrafen
						["qg"] = 17969,	-- Kayra Longmane
						["coord"] = { 83.4, 85.5, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							i(25518),	-- Explorer's Leggings
							i(25517),	-- Preserver's Medallion
							i(25519),	-- Warden's Hammer
							i(157548, {	-- Warden's Longbow
								["timeline"] = { ADDED_7_3_5 },
							}),
						},
					}),
					q(9708, {	-- Familiar Fungi
						["sourceQuest"] = 9702,	-- A Question of Gluttony
						["qg"] = 17831,	-- Watcher Leesa'oh
						["coord"] = { 23.3, 66.2, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- 0/15 Mushroom Sample
								["provider"] = { "i", 24238 },	-- Mushroom Sample
								["coord"] = { 32.8, 33.8, ZANGARMARSH },
								["crs"] = {
									18118,	-- Ango'rosh Shaman
									18117,	-- Ango'rosh Ogre
									20443,	-- Ango'rosh Sentry
									18159,	-- Boss Grog'ak
								},
							}),
						},
					}),
					q(9806, {	-- Fertile Spores
						["qg"] = 17925,	-- Gshaff
						["coord"] = { 19.1, 49.4, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, NEUTRAL },	-- Sporeggar, Neutral.
						["cost"] = { { "i", 24449, 6 } },	-- Fertile Spore
						["lvl"] = lvlsquish(62, 62, 10),
						["_drop"] = { "g" },	-- Glowcap added from API
					}),
					q(9729, {	-- Fhwoor Smash!
						["qg"] = 17877,	-- Fhwoor
						["coord"] = { 19.8, 50.8, ZANGARMARSH },
						-- #if BEFORE CATA
						-- Not really sure when this changed. It's only available after Exalted in TBC Classic.
						["minReputation"] = { FACTION_SPOREGGAR, EXALTED },	-- Sporeggar, Exalted.
						-- #else
						["minReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						-- #endif
						["lvl"] = lvlsquish(63, 63, 10),
						["groups"] = {
							i(25537),	-- Hewing Axe of the Marsh
							i(25536),	-- Sporeggar Smasher
							i(25538),	-- Sporeling Claw
						},
					}),
					q(9777, {	-- Fulgor Spores
						["qg"] = 18007,	-- Ruam
						["coord"] = { 68.6, 48.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/6 Fulgor Spore
								["providers"] = {
									{ "i",  24383 },	-- Fulgor Spore
									{ "o", 182116 },	-- Fulgor Spore
								},
								["coord"] = { 67.3, 50.1, ZANGARMARSH },
							}),
						},
					}),
					q(9801, {	-- Gathering the Reagents
						["sourceQuest"] = 9787,	-- Idols of the Feralfen
						["qg"] = 18003,	-- Anchorite Ahuurn
						["coord"] = { 68.2, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/4 Sporebat Eye
								["provider"] = { "i", 24426 },	-- Sporebat Eye
								["crs"] = {
									18129,	-- Greater Sporebat
									18128,	-- Sporebat
									20387,	-- Young Sporebat
									18280,	-- Sporewing
								},
							}),
							objective(2, {	-- 0/4 Fen Strider Tentacle
								["provider"] = { "i", 24427 },	-- Fen Strider Tentacle
								["crs"] = {
									18134,	-- Fen Strider
									18135,	-- Marsh Walker
									18281,	-- Boglash
									18680,	-- Marticar
								},
							}),
						},
					}),
					q(9808, {	-- Glowcap Mushrooms
						["qg"] = 17924,	-- Msshi'fn
						["coord"] = { 19.7, 52.1, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, NEUTRAL },	-- Sporeggar, Neutral.
						["maxReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["cost"] = { { "i", 24245, 10 } },	-- Glowcap
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.5 },	-- Sporeggar, Friendly
						-- #endif
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9816, {	-- Have You Ever Seen One of These?
						["sourceQuest"] = 9814,	-- Burstcap Mushrooms, Mon!
						["qg"] = 18014,	-- Witch Doctor Tor'gash
						["coord"] = { 32.9, 48.9, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- Release Murlocs at Daggerfen Village
								["provider"] = { "i", 24470 },	-- Murloc Cage
								["coord"] = { 26.4, 22.0, ZANGARMARSH },
							}),
							i(25612),	-- Daggerfen Mail
							i(25610),	-- Fen Strider's Footguards
							i(25611),	-- The Witch Doctor's Wraps
						},
					}),
					heroscall(q(39181, {	-- Hero's Call: Zangarmarsh!
						["timeline"] = { ADDED_6_2_0 },
						["isBreadcrumb"] = true,
						["lvl"] = 60,
					})),
					q(9784, {	-- Identify Plant Parts
						["sourceQuest"] = 9802,	-- Plants of Zangarmarsh
						["qg"] = 17909,	-- Lauranna Thar'well
						["coord"] = { 80.3, 64.2, ZANGARMARSH },
						["maxReputation"] = { FACTION_CENARION_EXPEDITION, HONORED },	-- Cenarion Expedition, Honored.
						["cost"] = {{ "i", 24401, 10 }},	-- Unidentified Plant Parts
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 942.6 },	-- Cenarion Expedition, Honored
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							i(24402, {	-- Package of Identified Plants
								i(24405),	-- Common Azerothian Species
								i(24403),	-- Common Fern
								i(24406),	-- Common Flower
								i(24540),	-- Edible Fern
								i(24408),	-- Edible Stalks
								i(24404),	-- Ruined Specimen
								i(24407),	-- Uncatalogued Species
							}),
						},
					}),
					q(9787, {	-- Idols of the Feralfen
						["sourceQuest"] = 9786,	-- The Boha'mu Ruins
						["qg"] = 18003,	-- Anchorite Ahuurn
						["coord"] = { 68.2, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/6 Feralfen Idol
								["providers"] = {
									{ "i",  24422 },	-- Feralfen Idol
									{ "o", 182139 },	-- Feralfen Idol
								},
								["coord"] = { 44.3, 61.7, ZANGARMARSH },
							}),
						},
					}),
					q(9822, {	-- Impending Attack
						["sourceQuest"] = 9820,	-- WANTED: Boss Grog'ak
						["qg"] = 18013,	-- Shadow Hunter Denjai
						["coord"] = { 30.6, 50.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Ango'rosh Attack Plans
								["providers"] = {
									{ "i",  24471 },	-- Ango'rosh Attack Plans
									{ "o", 182166 },	-- Ango'rosh Attack Plans
								},
								["coord"] = { 19.9, 27.0, ZANGARMARSH },
							}),
						},
					}),
					q(9772, {	-- Jyoba's Report
						["sourceQuest"] = 9771,	-- Searching for Scout Jyoba
						["qg"] = 18035,	-- Scout Jyoba
						["coord"] = { 80.7, 36.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Scout Jyoba's Report
								["provider"] = { "i", 24373 },	-- Scout Jyoba's Report
								["coord"] = { 84.0, 41.2, ZANGARMARSH },
								["cr"] = 18124,	-- Withered Giant
							}),
							i(25600),	-- Bog Walker's Bands
							i(25602),	-- Bog Walker's Belt
							i(31768),	-- Deep Mire Cloak
							i(25601),	-- Murk-Darkened Bracers
						},
					}),
					q(9817, {	-- Leader of the Bloodscale
						["provider"] = { "o", 182115 },	-- Wanted Poster
						["coord"] = { 79.1, 64.9, ZANGARMARSH },
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Rajis Fyashe slain
								["provider"] = { "n", 18044 },	-- Rajis Fyashe
								["coord"] = { 65.0, 40.8, ZANGARMARSH },
							}),
							i(27723),	-- Belt of the Moonkin
							i(27721),	-- Expedition Footgear
							i(27722),	-- Gloves of Marshmanship
							i(27724),	-- Wild Shoulderpads
						},
					}),
					q(9730, {	-- Leader of the Darkcrest
						["provider"] = { "o", 182115 },	-- Wanted Poster
						["coord"] = { 79.1, 64.9, ZANGARMARSH },
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Rajah Haghazed slain
								["provider"] = { "n", 18046 },	-- Rajah Haghazed
								["coord"] = { 65.0, 69.6, ZANGARMARSH },
							}),
							i(27728),	-- Cushy Cenarion Walkers
							i(27725),	-- Expedition Mantle
							i(27726),	-- Hearty Cenarion Cincture
							i(27727),	-- Swift Cenarion Footwear
						},
					}),
					q(9833, {	-- Lines of Communication
						["qg"] = 18009,	-- Puluu
						["coord"] = { 40.8, 28.6, ZANGARMARSH },
						["minReputation"] = { FACTION_KURENAI, NEUTRAL },	-- Kurenai, Neutral.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/12 Marshfang Slicer slain
								["provider"] = { "n", 18131 },	-- Marshfang Slicer
								["coord"] = { 34.4, 58.6, ZANGARMARSH },
							}),
							i(27753),	-- Ensorcelled Marshfang Blade
							i(157547, {	-- Keen Marshfang Shanker
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(27754),	-- Keen Marshfang Slicer
							i(27756),	-- Marshfang Blade Axe
						},
					}),
					q(9905, {	-- Maktu's Revenge
						["sourceQuest"] = 9834,	-- Natural Armor
						["qg"] = 18010,	-- Maktu
						["coord"] = { 41.6, 27.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Mragesh slain
								["provider"] = { "n", 18286 },	-- Mragesh
								["coord"] = { 42.2, 41.6, ZANGARMARSH },
							}),
						},
					}),
					q(9791, {	-- Menacing Marshfangs [Alliance]
						["qg"] = 18006,	-- Noraani
						["coord"] = { 67.6, 47.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Marshfang Ripper slain
								["provider"] = { "n", 18130 },	-- Marshfang Ripper
								["coord"] = { 76.6, 50.0, ZANGARMARSH },
							}),
						},
					}),
					q(9770, {	-- Menacing Marshfangs [Horde]
						["qg"] = 18012,	-- Reavij
						["coord"] = { 85.0, 54.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Marshfang Ripper slain
								["provider"] = { "n", 18130 },	-- Marshfang Ripper
								["coord"] = { 76.6, 50.0, ZANGARMARSH },
							}),
						},
					}),
					q(10118, {	-- Message to the Daggerfen
						["sourceQuest"] = 9822,	-- Impending Attack
						["qg"] = 18013,	-- Shadow Hunter Denjai
						["coord"] = { 30.6, 50.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/3 Daggerfen Assassin slain
								["provider"] = { "n", 18116 },	-- Daggerfen Assassin
								["coord"] = { 25.0, 25.6, ZANGARMARSH },
							}),
							objective(2, {	-- 0/15 Daggerfen Muckdweller slain
								["provider"] = { "n", 18115 },	-- Daggerfen Muckdweller
								["coord"] = { 25.6, 25.0, ZANGARMARSH },
							}),
						},
					}),
					q(9803, {	-- Messenger to the Feralfen
						["sourceQuest"] = 9801,	-- Gathering the Reagents
						["qg"] = 18003,	-- Anchorite Ahuurn
						["coord"] = { 68.2, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Elder Kuruti's Response
								["providers"] = {
									{ "i", 24573 },	-- Elder Kuruti's Response
									{ "i", 24428 },	-- Ahuurn's Elixir
								},
								["coord"] = { 44.0, 69.4, ZANGARMARSH },
								["cr"] = 18197,	-- Elder Kuruti
							}),
							i(25614),	-- Feralfen Beastmaster's Hauberk
							i(25615),	-- Feralfen Champion's Boots
							i(25613),	-- Feralfen Mystic's Handwraps
							i(31660),	-- Feralfen Skulker's Belt
						},
					}),
					q(9807, {	-- More Fertile Spores
						["sourceQuest"] = 9806,	-- Fertile Spores
						["qg"] = 17925,	-- Gshaff
						["coord"] = { 19.1, 49.4, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["maxReputation"] = { FACTION_SPOREGGAR, EXALTED },	-- Sporeggar, Exalted.
						["cost"] = { { "i", 24449, 6 } },	-- Fertile Spore
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.8 },	-- Sporeggar, Exalted
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
						["_drop"] = { "g" },	-- Glowcap added from API
					}),
					q(9809, {	-- More Glowcaps
						["sourceQuest"] = 9808,	-- Glowcap Mushrooms
						["qg"] = 17924,	-- Mshii'fn
						["coord"] = { 19.7, 52.1, ZANGARMARSH },
						["maxReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["cost"] = { { "i", 24245, 10 } },	-- Glowcap
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.5 },	-- Sporeggar, Friendly
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9742, {	-- More Spore Sacs
						["sourceQuest"] = 9739,	-- The Sporelings' Plight
						["qg"] = 17923,	-- Fahssn
						["coord"] = { 19.0, 63.4, ZANGARMARSH },
						["maxReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.5 },	-- Sporeggar, Friendly
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9744, {	-- More Tendrils!
						["sourceQuest"] = 9743,	-- Natural Enemies
						["qg"] = 17923,	-- Fahssn
						["coord"] = { 19.0, 63.4, ZANGARMARSH },
						["maxReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["cost"] = { { "i", 24291, 6 } },	-- Bog Lord Tendril
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.5 },	-- Sporeggar, Friendly
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9834, {	-- Natural Armor
						["qg"] = 18010,	-- Maktu
						["coord"] = { 41.6, 27.4, ZANGARMARSH },
						["minReputation"] = { FACTION_KURENAI, NEUTRAL },	-- Kurenai, Neutral.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Fenclaw Hide
								["provider"] = { "i", 24486 },	-- Fenclaw Hide
								["coord"] = { 48.8, 42.4, ZANGARMARSH },
								["crs"] = {
									18214,	-- Fenclaw Thrasher
									18286,	-- Mragesh
								},
							}),
						},
					}),
					q(9743, {	-- Natural Enemies
						["qg"] = 17923,	-- Fahssn
						["coord"] = { 19.0, 62.6, ZANGARMARSH },
						["cost"] = { { "i", 24291, 6 } },	-- Bog Lord Tendril
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(10105, {	-- News for Rakoria
						["description"] = "Only one of News from Zangarmarsh(9796) and News for Rakoria(10105) can be picked up",
						["qg"] = 18013,	-- Shadow Hunter Denjai
						["coord"] = { 30.6, 50.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9796, {	-- News from Zangarmarsh
						["description"] = "Only one of News from Zangarmarsh(9796) and News for Rakoria(10105) can be picked up",
						["qg"] = 18011,	-- Zurai
						["coord"] = { 85.3, 54.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9773, {	-- No More Mushrooms!
						["qg"] = 18016,	-- Magasha
						["coord"] = { 84.4, 54.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Eel Filet
								["provider"] = { "i", 24374 },	-- Eel Filet
								["coord"] = { 75.0, 66.6, ZANGARMARSH },
								["cr"] = 18138,	-- Umbrafen Eel
							}),
						},
					}),
					q(9794, {	-- No Time for Curiosity
						["providers"] = {
							{ "n", 18019 },	-- Timothy Daniels
							{ "i", 26048 },	-- Letter to Kialon
						},
						["coord"] = { 41.2, 28.6, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(58, 58, 10),
					}),
					q(9726, {	-- Now That We're Friends...
						["qg"] = 17856,	-- Gzhun'tt
						["coord"] = { 19.5, 50.0, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/12 Bloodscale Slavedriver slain
								["provider"] = { "n", 18089 },	-- Bloodscale Slavedriver
								["coord"] = { 26.4, 39.4, ZANGARMARSH },
							}),
							objective(2, {	-- 0/6 Bloodscale Enchantress slain
								["provider"] = { "n", 18088 },	-- Bloodscale Enchantress
								["coord"] = { 27.0, 45.2, ZANGARMARSH },
							}),
							i(27750),	-- Hammer of the Sporelings
							i(27749),	-- Staff of the Wild
							i(27751),	-- Survivalist's Pike
							i(27752),	-- Zangarmarsh Claymore
						},
					}),
					q(9727, {	-- Now That We're Still Friends...
						["sourceQuest"] = 9726,	-- Now That We're Friends...
						["qg"] = 17856,	-- Gzhun'tt
						["coord"] = { 19.5, 50.0, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, FRIENDLY },	-- Sporeggar, Friendly.
						["maxReputation"] = { FACTION_SPOREGGAR, EXALTED },	-- Sporeggar, Exalted.
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 970.8 },	-- Sporeggar, Exalted
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/12 Bloodscale Slavedriver slain
								["provider"] = { "n", 18089 },	-- Bloodscale Slavedriver
								["coord"] = { 26.4, 39.4, ZANGARMARSH },
							}),
							objective(2, {	-- 0/6 Bloodscale Enchantress slain
								["provider"] = { "n", 18088 },	-- Bloodscale Enchantress
								["coord"] = { 27.0, 45.2, ZANGARMARSH },
							}),
						},
					}),
					q(9701, {	-- Observing the Sporelings
						["sourceQuest"] = 9697,	-- Watcher Leesa'oh
						["qg"] = 17831,	-- Watcher Leesa'oh
						["coord"] = { 23.3, 66.2, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9839, {	-- Overlord Gorefist
						["sourceQuest"] = 9835,	-- Ango'rosh Encroachment
						["qg"] = 18008,	-- Ikuti
						["coord"] = { 41.8, 27.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Overlord Gorefist slain
								["provider"] = { "n", 18160 },	-- Overlord Gorefist
								["coord"] = { 18.6, 7.8, ZANGARMARSH },
							}),
							objective(2, {	-- 0/10 Ango'rosh Mauler slain
								["provider"] = { "n", 18120 },	-- Ango'rosh Mauler
								["coord"] = { 17.6, 9.8, ZANGARMARSH },
							}),
							i(25619),	-- Glowing Crystal Insignia
							i(31770),	-- Marsh Bracers
							i(25618),	-- Telaar Courier's Cloak
						},
					}),
					q(9802, {	-- Plants of Zangarmarsh
						["qg"] = 17909,	-- Lauranna Thar'well
						["coord"] = { 80.3, 64.2, ZANGARMARSH },
						["cost"] = {{ "i", 24401, 10 }},	-- Unidentified Plant Parts
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							i(24402, {	-- Package of Identified Plants
								i(24405),	-- Common Azerothian Species
								i(24403),	-- Common Fern
								i(24406),	-- Common Flower
								i(24540),	-- Edible Fern
								i(24408),	-- Edible Stalks
								i(24404),	-- Ruined Specimen
								i(24407),	-- Uncatalogued Species
							}),
						},
					}),
					q(9765, {	-- Preparing for War
						["sourceQuest"] = 9764,	-- Orders from Lady Vashj
						["qg"] = 17841,	-- Ysiel Windsinger
						["timeline"] = { REMOVED_4_3_0 },
						["maps"] = { COILFANG_RESERVOIR_STEAMVAULT },
						["cost"] = {{ "i", 24368, 1 }},	-- Coilfang Armaments
						["lvl"] = lvlsquish(67, 67, 20),
					}),
					q(9904, {	-- Pursuing Terrorclaw
						["sourceQuest"] = 9845,	-- Angling to Beat the Competition
						["qg"] = 18018,	-- Zurjaya
						["coord"] = { 32.9, 48.9, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Terrorclaw slain
								["provider"] = { "n", 20477 },	-- Terrorclaw
								["coord"] = { 22.4, 46.6, ZANGARMARSH },
							}),
							i(25922),	-- Fearless Girdle
							i(25923),	-- Fierce Mantle
							i(25924),	-- Swamprunner's Boots
							i(25925),	-- Terrorcloth Mantle
						},
					}),
					q(9775, {	-- Report to Shadow Hunter Denjai
						["providers"] = {
							{ "n", 18011 },	-- Zurai
							{ "i", 24382 },	-- Zurai's Report
						},
						["coord"] = { 85.3, 54.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9732, {	-- Return to the Marsh
						["sourceQuest"] = 9724,	-- Warning the Cenarion Circle
						["qg"] = 16885,	-- Amythiel Mistwalker
						["coord"] = { 16.0, 52.1, HELLFIRE_PENINSULA },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							i(25524),	-- Cenarion Expedition Boots
							i(25522),	-- Marshstrider's Spaulders
							i(25523),	-- Windcaller's Gauntlets
						},
					}),
					q(9894, {	-- Safeguarding the Watchers
						["sourceQuest"] = 9747,	-- The Umbrafen Tribe
						["qg"] = 18070,	-- Windcaller Blackhoof
						["coord"] = { 80.4, 64.7, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Lord Klaq slain
								["provider"] = { "n", 18282 },	-- Lord Klaq
								["coord"] = { 73.0, 94.6, ZANGARMARSH },
							}),
						},
					}),
					q(10096, {	-- Saving the Sporeloks
						["sourceQuest"] = 9747,	-- The Umbrafen Tribe
						["qg"] = 17909,	-- Lauranna Thar'well
						["coord"] = { 80.3, 64.2, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Marsh Dredger slain
								["provider"] = { "n", 18137 },	-- Marsh Dredger
								["coord"] = { 73.6, 95.6, ZANGARMARSH },
							}),
							objective(2, {	-- 0/10 Marsh Lurker slain
								["provider"] = { "n", 18136 },	-- Marsh Lurker
								["coord"] = { 72.8, 98.6, ZANGARMARSH },
							}),
							i(31657),	-- Chemise of Rebirth
							i(27715),	-- Circle's Stalwart Helmet
							i(27717),	-- Expedition Forager Leggings
							i(31658),	-- Scout's Hood
						},
					}),
					q(9771, {	-- Searching for Scout Jyoba
						["sourceQuest"] = 9774,	-- Thick Hydra Scales
						["qg"] = 18011,	-- Zurai
						["coord"] = { 85.3, 54.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9848, {	-- Secrets of the Daggerfen
						["qg"] = 18019,	-- Timothy Daniels
						["coord"] = { 41.2, 28.6, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Daggerfen Poison Manual
								["providers"] = {
									{ "i",  24499 },	-- Daggerfen Poison Manual
									{ "o", 182184 },	-- Daggerfen Poison Manual
								},
								["coord"] = { 24.3, 27.0, ZANGARMARSH },
							}),
							objective(2, {	-- 0/1 Daggerfen Poison Vial
								["providers"] = {
									{ "i",  24500 },	-- Daggerfen Poison Vial
									{ "o", 182185 },	-- Daggerfen Poison Vial
								},
								["coords"] = {
									{ 23.6, 22.8, ZANGARMARSH },
									{ 25.3, 25.0, ZANGARMARSH },
									{ 26.7, 21.9, ZANGARMARSH },
								},
							}),
							i(25616),	-- Tim's Trusty Helmet
						},
					}),
					q(9846, {	-- Spirits of the Feralfen
						["qg"] = 18017,	-- Seer Janidi
						["coord"] = { 32.4, 52.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/10
								["provider"] = { "i", 24497 },	-- Feralfen Protection Totem
								["coord"] = { 45.8, 60.6, ZANGARMARSH },
								["crs"] = {
									20270,	-- Feralfen Druid
									18113,	-- Feralfen Hunter
									18114,	-- Feralfen Mystic
								},
							}),
						},
					}),
					q(9919, {	-- Sporeggar
						-- #if AFTER 7.3.5.25632
						["sourceQuest"] = 50131,	-- An Outside Perspective
						-- #endif
						["providers"] = {
							{ "n", 17923 },	-- Fahssn
							{ "i", 25491 },	-- Salvaged Spore Sacs
						},
						["coord"] = { 19.0, 63.4, ZANGARMARSH },
						["minReputation"] = { FACTION_SPOREGGAR, NEUTRAL },	-- Sporeggar, Neutral.
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9709, {	-- Stealing Back the Mushrooms
						["sourceQuest"] = 9708,	-- Familiar Fungi
						["qg"] = 17831,	-- Watcher Leesa'oh
						["coord"] = { 23.3, 66.2, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Box of Mushrooms
								["providers"] = {
									{ "i",  24240 },	-- Box of Mushrooms
									{ "o", 182050 },	-- Box of Mushrooms
								},
								["coord"] = { 19.3, 8.7, ZANGARMARSH },
								["crs"] = {
									20444,	-- Ango'rosh Shadowmage
									18120,	-- Ango'rosh Mauler
									18121,	-- Ango'rosh Souleater
									20442,	-- Captain Bo'kar
									18992,	-- Captain Krosh
									18160,	-- Overlord Gorefist
								},
							}),
							i(25530),	-- Helm of Natural Purity
							i(31661),	-- Leesa'oh's Wristbands
							i(25534),	-- Marsh Survivalist's Belt
							i(25525),	-- Zangar Epaulets
						},
					}),
					q(9830, {	-- Stinger Venom
						["qg"] = 18009,	-- Puluu
						["coord"] = { 40.8, 28.6, ZANGARMARSH },
						["minReputation"] = { FACTION_KURENAI, NEUTRAL },	-- Kurenai, Neutral.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/6 Marshlight Bleeder Venom
								["provider"] = { "i", 24485 },	-- Marshlight Bleeder Venom
								["coord"] = { 25.8, 31.6, ZANGARMARSH },
								["crs"] = {
									20198,	-- Fenglow Stinger
									18133,	-- Marshlight Bleeder
								},
							}),
						},
					}),
					q(9841, {	-- Stinging the Stingers
						["qg"] = 18015,	-- Gambarinka
						["coord"] = { 31.6, 49.2, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Marshlight Bleeder slain
								["provider"] = { "n", 18133 },	-- Marshlight Bleeder
								["coord"] = { 25.8, 31.6, ZANGARMARSH },
							}),
						},
					}),
					q(11531, {	-- Strange Engine Part
						["providers"] = {
							{ "i",  34469 },	-- Strange Engine Part
							{ "i",  34474 },	-- Strange Engine Part
							{ "o", 182952 },	-- Steam Pump Flotsam
						},
						["requireSkill"] = FISHING,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = lvlsquish(67, 67, 10),
					}),
					q(9903, {	-- The Biggest of Them All
						["sourceQuest"] = 9845,	-- Angling to Beat the Competition
						["qg"] = 18018,	-- Zurjaya
						["coord"] = { 32.2, 49.6, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Mragesh slain
								["provider"] = { "n", 18286 },	-- Mragesh
								["coord"] = { 42.2, 41.6, ZANGARMARSH },
							}),
						},
					}),
					q(9786, {	-- The Boha'mu Ruins
						["qg"] = 18003,	-- Anchorite Ahuurn
						["coord"] = { 68.2, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(2, {	-- Explore the Boha'mu Ruins
								["coord"] = { 45.0, 68.0, ZANGARMARSH },
							}),
						},
					}),
					q(9912, {	-- The Cenarion Expedition
						["qg"] = 16885,	-- Amythiel Mistwalker
						["coord"] = { 16.0, 52.1, HELLFIRE_PENINSULA },
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9911,	{	-- The Count of the Marshes
						["provider"] = { "i", 25459 },	-- "Count" Ungula's Mandible
						["coord"] = { 32.8, 59.5, ZANGARMARSH },
						["cr"] = 18285,	-- "Count" Ungula
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9782, {	-- The Dead Mire
						["qg"] = 18004,	-- Vindicator Idaar
						["coord"] = { 68.2, 50.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Dead Mire Soil Sample
								["providers"] = {
									{ "i",  24400 },	-- Dead Mire Soil Sample
									{ "o", 182119 },	-- Dead Mire Soil
								},
								["coord"] = { 81.2, 38.9, ZANGARMARSH },
							}),
						},
					}),
					q(9895, {	-- The Dying Balance
						["qg"] = 17834,	-- Lethyn Moonfire
						["coord"] = { 78.6, 63.0, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Boglash slain
								["provider"] = { "n", 18281 },	-- Boglash
								["coord"] = { 82.6, 75.0, ZANGARMARSH },
							}),
						},
					}),
					q(9776, {	-- The Orebor Harborage
						["qg"] = 18003,	-- Anchorite Ahuurn
						["coord"] = { 68.2, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
					}),
					q(9898, {	-- The Respect of Another
						["sourceQuest"] = 9770,	-- Menacing Marshfangs
						["qg"] = 18012,	-- Reavij
						["coord"] = { 85.0, 54.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Blacksting's Stinger
								["provider"] = { "i", 25448 },	-- Blacksting's Stinger
								["coord"] = { 49.8, 59.6, ZANGARMARSH },
								["cr"] = 18283,	-- Blacksting
							}),
							i(31788),	-- Blacksting Gloves
							i(31786),	-- Blacksting Shoulders
							i(31789),	-- Marshfang Boots
							i(31787),	-- Stalwart Girdle
						},
					}),
					q(9842, {	-- The Sharpest Blades
						["sourceQuest"] = 9841,	-- Stinging the Stingers
						["qg"] = 18015,	-- Gambarinka
						["coord"] = { 31.6, 49.2, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Marshfang Slicer Blade
								["provider"] = { "i", 24493 },	-- Marshfang Slicer Blade
								["coord"] = { 33.8, 57.4, ZANGARMARSH },
								["cr"] = 18131,	-- Marshfang Slicer
							}),
							i(27753),	-- Ensorcelled Marshfang Blade
							i(157547, {	-- Keen Marshfang Shanker
								["timeline"] = { ADDED_7_3_5 },
							}),
							i(27754),	-- Keen Marshfang Slicer
							i(27756),	-- Marshfang Blade Axe
						},
					}),
					q(9739, {	-- The Sporelings' Plight
						["qg"] = 17923,	-- Fahssn
						["coord"] = { 19.0, 62.6, ZANGARMARSH },
						["lvl"] = lvlsquish(61, 61, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Mature Spore Sac
								["providers"] = {
									{ "i",  24290 },	-- Mature Spore Sac
									{ "o", 182069 },	-- Mature Spore Sac
								},
								["coord"] = { 15.3, 61.9, ZANGARMARSH },
							}),
						},
					}),
					q(9902, {	-- The Terror of Marshlight Lake
						["qg"] = 18009,	-- Puluu
						["coord"] = { 40.8, 28.6, ZANGARMARSH },
						["minReputation"] = { FACTION_KURENAI, NEUTRAL },	-- Kurenai, Neutral.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Terrorclaw slain
								["provider"] = { "n", 20477 },	-- Terrorclaw
								["coord"] = { 22.4, 46.6, ZANGARMARSH },
							}),
							i(25922),	-- Fearless Girdle
							i(25923),	-- Fierce Mantle
							i(25924),	-- Swamprunner's Boots
							i(25925),	-- Terrorcloth Mantle
						},
					}),
					q(9747, {	-- The Umbrafen Tribe
						["qg"] = 17956,	-- Ikeyen
						["coord"] = { 80.4, 64.2, ZANGARMARSH },
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Kataru slain
								["provider"] = { "n", 18080 },	-- Kataru
								["coord"] = { 85.2, 90.8, ZANGARMARSH },
							}),
							objective(2, {	-- 0/6 Umbrafen Oracle slain
								["provider"] = { "n", 18077 },	-- Umbrafen Oracle
								["coord"] = { 83.6, 82.8, ZANGARMARSH },
							}),
							objective(3, {	-- 0/8 Umbrafen Seer slain
								["provider"] = { "n", 18079 },	-- Umbrafen Seer
								["coord"] = { 81.4, 79.6, ZANGARMARSH },
							}),
							objective(4, {	-- 0/6 Umbrafen Witchdoctor slain
								["provider"] = { "n", 20115 },	-- Umbrafen Witchdoctor
								["coord"] = { 82.8, 85.8, ZANGARMARSH },
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10961, {	-- The Ward of Wakening
						["sourceQuest"] = 10955,	-- Morthis Whisperwing
						["qg"] = 22832,	-- Morthis Whisperwing <Druid of the Talon>
						["coord"] = { 80.2, 65.2, ZANGARMARSH },
						["timeline"] = { REMOVED_4_0_1 },
						["cost"] = {
							{ "i", 22790, 10 },	-- Ancient Lichen
							{ "i", 22786, 10 },	-- Dreaming Glory
						},
						["classes"] = { DRUID },
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/10 Bogblossom
								["providers"] = {
									{ "i",  31950 },	-- Bogblossom
									{ "o", 185497 },	-- Bogblossom
								},
								["coords"] = {
									{ 81.5, 70.5, ZANGARMARSH },
									{ 63.2, 53.2, ZANGARMARSH },
									{ 65.8, 74.5, ZANGARMARSH },
									{ 80.9, 77.5, ZANGARMARSH },
								},
							}),
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, {	-- The Zapthrottle Mote Extractor!
						["allianceQuestData"] = q(9636, {	-- The Zapthrottle Mote Extractor! [A]
							["altQuests"] = { 9635 },	-- The Zapthrottle Mote Extractor! [H]
							["qg"] = 17634,	-- K. Lee Smallfry <Engineering Trainer>
							["coord"] = { 68.6, 50.2, ZANGARMARSH },
						}),
						["hordeQuestData"] = q(9635, {	-- The Zapthrottle Mote Extractor! [A]
							["altQuests"] = { 9636 },	-- The Zapthrottle Mote Extractor! [H]
							["qg"] = 17637,	-- Mack Diver <Engineering Trainer>
							["coord"] = { 34.0, 51.0, ZANGARMARSH },
						}),
						["requireSkill"] = ENGINEERING,
						["groups"] = {
							objective(1, {	-- 0/15 Steam Pump Part
								["providers"] = {
									{ "i",  23981 },	-- Steam Pump Part
									{ "o", 181871 },	-- Steam Pump Part
									{ "o", 181872 },	-- Steam Pump Part
									{ "o", 181873 },	-- Steam Pump Part
									{ "o", 181874 },	-- Steam Pump Part
									{ "o", 181875 },	-- Steam Pump Part
									{ "o", 181876 },	-- Steam Pump Part
								},
								["coord"] = { 81.5, 40.2, ZANGARMARSH },
							}),
							i(23888),	-- Schematic: Zapthrottle Mote Extractor (RECIPE!)
						},
					}),
					q(9769, {	-- There's No Explanation for Fashion
						["qg"] = 18016,	-- Magasha
						["coord"] = { 84.4, 54.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Diaphanous Wing
								["provider"] = { "i", 24372 },	-- Diaphanous Wing
								["crs"] = {
									20197,	-- Bogflare Needler
									20198,	-- Fenglow Stinger
									18133,	-- Marshlight Bleeder
									18132,	-- Umbraglow Stinger
									18283,	-- Blacksting
								},
							}),
						},
					}),
					q(9774, {	-- Thick Hydra Scales
						["qg"] = 18011,	-- Zurai
						["coord"] = { 85.3, 54.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(59, 59, 10),
						["groups"] = {
							objective(1, {	-- 0/12 Thick Hydra Scale
								["provider"] = { "i", 24375 },	-- Thick Hydra Scale
								["coord"] = { 78.0, 68.2, ZANGARMARSH },
								["crs"] = {
									18213,	-- Mire Hydra
									20324,	-- Parched Hydra
									18214,	-- Fenclaw Thrasher
									18286,	-- Mragesh
								},
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10979, {	-- To the Evergrove
						["sourceQuest"] = 10978,	-- Return to Morthis Whisperwing
						["qg"] = 22832,	-- Morthis Whisperwing <Druid of the Talon>
						["coord"] = { 80.2, 65.2, ZANGARMARSH },
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { BLADES_EDGE_MOUNTAINS },
						["classes"] = { DRUID },
						["lvl"] = 70,
					})),
					q(9781, {	-- Too Many Mouths to Feed
						["qg"] = 18005,	-- Haalrun
						["coord"] = { 67.8, 48.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/10 Mire Hydra slain
								["provider"] = { "n", 18213 },	-- Mire Hydra
								["coord"] = { 78.0, 68.2, ZANGARMARSH },
							}),
						},
					}),
					q(9780, {	-- Umbrafen Eel Filets
						["sourceQuest"] = 9791,	-- Menacing Marshfangs
						["qg"] = 18006,	-- Noraani
						["coord"] = { 67.6, 47.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/8 Eel Filet
								["provider"] = { "i", 24374 },	-- Eel Filet
								["coord"] = { 75.0, 66.6, ZANGARMARSH },
								["cr"] = 18138,	-- Umbrafen Eel
							}),
						},
					}),
					q(9875, {	-- Uncatalogued Species
						["sourceQuest"] = 9784,	-- Identify Plant Parts
						["provider"] = { "i", 24407 },	-- Uncatalogued Species
						["maxReputation"] = { FACTION_CENARION_EXPEDITION, HONORED },	-- Cenarion Expedition, Honored.
						-- #if NOT ANYCLASSIC
						["lockCriteria"] = { 1, "factionID", 942.5 },	-- Cenarion Expedition, Honored
						-- #endif
						["repeatable"] = true,
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9901, {	-- Unfinished Business
						["qg"] = 18295,	-- Prospector Conall
						["coord"] = { 68.6, 49.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- Sporewing slain
								["provider"] = { "n", 18280 },	-- Sporewing
								["coord"] = { 76.8, 46.0, ZANGARMARSH },
							}),
						},
					}),
					q(9823, {	-- Us or Them
						["sourceQuest"] = 9822,	-- Impending Attack
						["qg"] = 18013,	-- Shadow Hunter Denjai
						["coord"] = { 30.6, 50.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(62, 62, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Overlord Gorefist slain
								["provider"] = { "n", 18160 },	-- Overlord Gorefist
								["coord"] = { 18.6, 7.8, ZANGARMARSH },
							}),
							objective(2, {	-- 0/10 Ango'rosh Mauler slain
								["provider"] = { "n", 18120 },	-- Ango'rosh Mauler
								["coord"] = { 17.6, 9.8, ZANGARMARSH },
							}),
							objective(3, {	-- 0/10 Ango'rosh Souleater slain
								["provider"] = { "n", 18121 },	-- Ango'rosh Souleater
								["coord"] = { 20.8, 3.6, ZANGARMARSH },
							}),
							i(25617),	-- Captain Krosh's Crash Helmet
						},
					}),
					applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10964, {	-- Waking the Sleeper
						["sourceQuest"] = 10961,	-- The Ward of Wakening
						["providers"] = {
							{ "n", 22832 },	-- Morthis Whisperwing <Druid of the Talon>
							{ "i", 31953 },	-- Ward of Waking (Provided)
						},
						["coord"] = { 80.2, 65.2, ZANGARMARSH },
						["timeline"] = { REMOVED_4_0_1 },
						["classes"] = { DRUID },
						["lvl"] = 70,
					})),
					q(9820, {	-- WANTED: Boss Grog'ak
						["provider"] = { "o", 182165 },	-- Wanted Poster
						["coord"] = { 32.0, 49.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Boss Grog'ak's Head
								["provider"] = { "i", 24472 },	-- Boss Grog'ak's Head
								["coord"] = { 34.8, 35.8, ZANGARMARSH },
								["cr"] = 18159,	-- Boss Grog'ak
							}),
						},
					}),
					q(10116, {	-- WANTED: Chieftain Mummaki [Alliance]
						["provider"] = { "o", 183284 },	-- Wanted Poster
						["coord"] = { 41.8, 27.3, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Chieftain Mummaki's Totem
								["provider"] = { "i", 27943 },	-- Chieftain Mummaki's Totem
								["coord"] = { 23.8, 26.8, ZANGARMARSH },
								["cr"] = 19174,	-- Chieftain Mummaki
							}),
						},
					}),
					q(10117, {	-- Wanted: Chieftain Mummaki [Horde]
						["provider"] = { "o", 182165 },	-- Wanted Poster
						["coord"] = { 32.0, 49.3, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(58, 58, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Chieftain Mummaki's Totem
								["provider"] = { "i", 27943 },	-- Chieftain Mummaki's Totem
								["coord"] = { 23.8, 26.8, ZANGARMARSH },
								["cr"] = 19174,	-- Chieftain Mummaki
							}),
						},
					}),
					warchiefscommand(q(39180, {	-- Warchief's Command: Zangarmarsh!
						["timeline"] = { ADDED_6_2_0 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(9778, {	-- Warden Hamoot
						["qg"] = 17841,	-- Ysiel Windsinger
						["coord"] = { 78.4, 62.0, ZANGARMARSH },
						["isBreadcrumb"] = true,	-- for "A Warm Welcome"
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9724, {	-- Warning the Cenarion Circle
						["sourceQuest"] = 9731,	-- Drain Schematics
						["qg"] = 17841,	-- Ysiel Windsinger
						["coord"] = { 78.4, 62.0, ZANGARMARSH },
						["maps"] = { HELLFIRE_PENINSULA },
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9697, {	-- Watcher Leesa'oh
						["qg"] = 17834,	-- Lethyn Moonfire
						["coord"] = { 78.6, 63.0, ZANGARMARSH },
						["isBreadcrumb"] = true,	-- for "Observing the Sporelings"
						["lvl"] = lvlsquish(61, 61, 10),
					}),
					q(9827,	{	-- Withered Basidium [Alliance]
						["provider"] = { "i", 24483 },	-- Withered Basidium
						["races"] = ALLIANCE_ONLY,
						["cr"] = 18124,	-- Withered Giant
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(9828, {	-- Withered Basidium [Horde]
						["provider"] = { "i", 24484 },	-- Withered Basidium
						["races"] = HORDE_ONLY,
						["cr"] = 18124,	-- Withered Giant
						["lvl"] = lvlsquish(60, 60, 10),
					}),
					q(10355, {	-- Withered Flesh
						["sourceQuest"] = 9827,	-- Withered Basidium [Alliance]
						["qg"] = 18007,	-- Ruam
						["coord"] = { 68.6, 48.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(60, 60, 10),
						["groups"] = {
							objective(1, {	-- 0/5 Parched Hydra Sample
								["provider"] = { "i", 29480 },	-- Parched Hydra Sample
								["coord"] = { 82.4, 38.6, ZANGARMARSH },
								["cr"] = 20324,	-- Parched Hydra
							}),
							objective(2, {	-- 0/5 Withered Bog Lord Sample
								["provider"] = { "i", 29481 },	-- Withered Bog Lord Sample
								["coord"] = { 81.6, 33.6, ZANGARMARSH },
								["cr"] = 19402,	-- Withered Bog Lord
							}),
						},
					}),
				}),
				n(RARES, {
					n(18682, {	-- Bog Lurker
						["coords"] = {
							{ 23.0, 21.4, ZANGARMARSH },
							{ 24.4, 20.6, ZANGARMARSH },
							{ 28.2, 23.2, ZANGARMARSH },
							{ 40.2, 61.8, ZANGARMARSH },
							{ 44.8, 59.0, ZANGARMARSH },
							{ 49.2, 58.2, ZANGARMARSH },
							{ 84.8, 79.6, ZANGARMARSH },
							{ 86.0, 84.2, ZANGARMARSH },
							{ 86.0, 87.8, ZANGARMARSH },
							{ 86.0, 89.6, ZANGARMARSH },
							{ 86.0, 91.2, ZANGARMARSH },
						},
						["groups"] = {
							i(31248),	-- Bog Epaulets
							i(31250),	-- Bog Mantle
							i(31247),	-- Bog Pauldrons
							i(31249),	-- Bog Spaulders
						},
					}),
					n(18681, {	-- Coilfang Emissary
						["coords"] = {
							{ 25.4, 37.6, ZANGARMARSH },
							{ 25.8, 42.6, ZANGARMARSH },
							{ 26.6, 46.6, ZANGARMARSH },
							{ 60.0, 36.8, ZANGARMARSH },
							{ 63.0, 38.0, ZANGARMARSH },
							{ 64.8, 41.4, ZANGARMARSH },
							{ 63.4, 43.8, ZANGARMARSH },
							{ 63.8, 65.0, ZANGARMARSH },
							{ 62.0, 69.6, ZANGARMARSH },
							{ 64.4, 69.6, ZANGARMARSH },
							{ 70.6, 72.8, ZANGARMARSH },
							{ 72.2, 76.0, ZANGARMARSH },
							{ 74.8, 77.0, ZANGARMARSH },
							{ 73.4, 82.4, ZANGARMARSH },
						},
						["groups"] = {
							i(31246),	-- Nagahide Leggings
							i(31244),	-- Nagahide Pants
							i(31243),	-- Nagascale Legguards
							i(31242),	-- Nagascale Legplates
						},
					}),
					n(18680, {	-- Marticar
						["coords"] = {
							{ 17.6, 34.6, ZANGARMARSH },
							{ 16.0, 38.2, ZANGARMARSH },
							{ 15.0, 40.4, ZANGARMARSH },
							{ 15.0, 43.4, ZANGARMARSH },
							{ 14.8, 44.4, ZANGARMARSH },
							{ 13.4, 45.4, ZANGARMARSH },
							{ 11.0, 46.8, ZANGARMARSH },
							{ 11.0, 50.4, ZANGARMARSH },
							{ 10.0, 52.2, ZANGARMARSH },
							{ 10.8, 55.2, ZANGARMARSH },
							{ 37.8, 38.4, ZANGARMARSH },
							{ 38.8, 33.8, ZANGARMARSH },
							{ 40.4, 33.6, ZANGARMARSH },
							{ 42.6, 34.4, ZANGARMARSH },
							{ 43.6, 34.8, ZANGARMARSH },
							{ 44.6, 34.2, ZANGARMARSH },
							{ 47.0, 32.0, ZANGARMARSH },
							{ 47.8, 30.0, ZANGARMARSH },
							{ 50.0, 30.8, ZANGARMARSH },
							{ 52.4, 32.4, ZANGARMARSH },
							{ 54.0, 33.0, ZANGARMARSH },
							{ 54.8, 33.8, ZANGARMARSH },
							{ 70.3, 37.6, ZANGARMARSH },
							{ 73.6, 36.2, ZANGARMARSH },
							{ 73.8, 46.6, ZANGARMARSH },
							{ 75.8, 48.4, ZANGARMARSH },
							{ 77.0, 51.4, ZANGARMARSH },
							{ 78.8, 53.6, ZANGARMARSH },
						},
						["groups"] = {
							i(31254),	-- Striderhide Cloak
						},
					}),
				}),
				n(SPECIAL, {
					o(373437, {	-- Pungent Blobfish Cluster
						["timeline"] = { ADDED_9_2_5 },
						["description"] = "Inside Coilfang Reservoir area.",
						["cost"] = {{"i",187662,1}},	-- Strange Goop
						["coord"] = { 52.2, 37.9, ZANGARMARSH },
						["groups"] = {
							i(187915),	-- Pungent Blobfish
						},
					}),
				}),
				n(TREASURES, {
					o(182053, {	-- Glowcap
						i(24245),	-- Glowcap
					}),
				}),
				n(VENDORS, {
					n(18581, {	-- Alliance Field Scout
						["coord"] = { 64.6, 46.4, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(27931, {	-- Splintermark
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							i(27942, {	-- Incendic Rod
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							-- #if BEFORE MOP
							i(27929, {	-- Terminal Edge
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							i(27990, {	-- Idol of Savagery
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							i(27983, {	-- Libram of Zeal
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							-- #endif
							i(27921, {	-- Mark of Conquest
								["cost"] = { { "i", 24579, 30 }, },	-- 30x Mark of Honor Hold
							}),
							i(27922, {	-- Mark of Defiance
								["cost"] = { { "i", 24579, 30 }, },	-- 30x Mark of Honor Hold
							}),
							i(27927, {	-- Mark of Vindication
								["cost"] = { { "i", 24579, 30 }, },	-- 30x Mark of Honor Hold
							}),
							-- #if BEFORE MOP
							i(27984, {	-- Totem of Impact
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24579, 15 }, },	-- 15x Mark of Honor Hold
							}),
							-- #endif
						},
					}),
					n(19383, {	-- Captured Gnome
						["coord"] = { 32.4, 48.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(23805, {	-- Schematic: Ultra-Spectropic Detection Goggles (RECIPE!)
								["isLimited"] = true,
							}),
							i(23811, {	-- Schematic: White Smoke Flare (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(20028, {	-- Doba <Cooking Supplies>
						["coord"] = { 42.2, 27.8, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(27694),	-- Recipe: Blackened Trout (RECIPE!)
							i(27695),	-- Recipe: Feltail Delight (RECIPE!)
						},
					}),
					n(17904, {	-- Fedryen Swiftspear <Cenarion Expedition Quartermaster>
						["coord"] = { 79.3, 63.7, ZANGARMARSH },
						["groups"] = bubbleDownClassicRep(FACTION_CENARION_EXPEDITION, {
							{		-- Neutral
							}, {	-- Friendly
								i(24429),	-- Expedition Flare
								i(23814),	-- Schematic: Green Smoke Flare (RECIPE!)
								i(24417, {	-- Scout's Arrow
									["timeline"] = { REMOVED_4_0_1 },
								}),
								i(25737),	-- Pattern: Heavy Clefthoof Boots (RECIPE!)
							}, {	-- Honored
								applyclassicphase(TBC_PHASE_TWO, i(35403)),	-- Crusader's Ornamented Gloves
								applyclassicphase(TBC_PHASE_TWO, i(35415)),	-- Crusader's Scaled Legguards
								i(29194, {	-- Glyph of Nature Warding
									["timeline"] = { REMOVED_5_0_4 },
								}),
								applyclassicphase(TBC_PHASE_TWO, i(35358)),	-- Dragonhide Legguards
								applyclassicphase(TBC_PHASE_TWO, i(35329)),	-- Dreadweave Hood
								applyclassicphase(TBC_PHASE_TWO, i(35347)),	-- Evoker's Silk Trousers
								i(25835),	-- Explorer's Walking Stick
								applyclassicphase(TBC_PHASE_TWO, i(35365)),	-- Kodohide Robe
								applyclassicphase(TBC_PHASE_TWO, i(35336)),	-- Mooncloth Shoulderpads
								applyclassicphase(TBC_PHASE_TWO, i(35367)),	-- Opportunist's Leather Helm
								i(29720),	-- Pattern: Clefthide Leg Armor (RECIPE!)
								i(25736),	-- Pattern: Heavy Clefthoof Leggings (RECIPE!)
								i(25735),	-- Pattern: Heavy Clefthoof Vest (RECIPE!)
								i(23618),	-- Plans: Adamantite Sharpening Stone (RECIPE!)
								i(28632),	-- Plans: Adamantite Weightstone (RECIPE!)
								i(25526),	-- Plans: Greater Rune of Warding (RECIPE!)
								i(25836),	-- Preserver's Cudgel
								i(32070, {	-- Recipe: Earthen Elixir (RECIPE!)
									["timeline"] = { ADDED_2_1_0 },
								}),
								i(25869),	-- Recipe: Transmute Earthstorm Diamond (RECIPE!)
								applyclassicphase(TBC_PHASE_TWO, i(35342)),	-- Satin Robe
								applyclassicphase(TBC_PHASE_TWO, i(35408)),	-- Savage Plate Gauntlets
								applyclassicphase(TBC_PHASE_TWO, i(35385)),	-- Seer's Linked Spaulders
								applyclassicphase(TBC_PHASE_TWO, i(35387)),	-- Seer's Mail Gauntlets
								applyclassicphase(TBC_PHASE_TWO, i(35394)),	-- Seer's Ringmail Legguards
								applyclassicphase(TBC_PHASE_TWO, i(35379)),	-- Stalker's Chain Leggings
								i(25838),	-- Warden's Hauberk
								applyclassicphase(TBC_PHASE_TWO, i(35374)),	-- Wyrmhide Spaulders
							}, {	-- Revered
								i(30623, {	-- Reservoir Key [Revered]
									["timeline"] = { REMOVED_4_2_0 },
									-- #if ANYCLASSIC
									["OnTooltip"] = [[_.OnTooltipDB.ShowHonoredKeyComparison]],
									["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateCompareOtherKey(185690),
									-- #endif
								}),
								i(29192, {	-- Glyph of Ferocity
									["timeline"] = { REMOVED_5_0_4 },
								}),
								i(31949, {	-- Warden's Arrow
									["timeline"] = { REMOVED_4_0_1 },
								}),
								i(24183),	-- Design: Nightseye Panther (RECIPE!)
								i(28271),	-- Formula: Enchant Gloves - Precise Strikes / TBC: Formula: Enchant Gloves - Spell Strike (RECIPE!)
								i(31392),	-- Plans: Wildguard Helm (RECIPE!)
								i(31391),	-- Plans: Wildguard Leggings (RECIPE!)
								i(22918),	-- Recipe: Transmute Primal Water to Air (RECIPE!)
								i(29173),	-- Strength of the Untamed
								i(29174),	-- Watcher's Cowl
							}, {	-- Exalted
								i(29172),	-- Ashyen's Gift
								i(31804),	-- Cenarion Expedition Tabard
								ach(893, {	-- Cenarion War Hippogryph
									["provider"] = { "i", 33999 },	-- Cenarion War Hippogryph
									["filterID"] = MOUNTS,
								}),
								i(33999),	-- Cenarion War Hippogryph (MOUNT!)
								i(31402),	-- Design: The Natural Ward (RECIPE!)
								i(29171),	-- Earthwarden
								i(33149, {["timeline"]={ADDED_2_2_0}}),	-- Formula: Enchant Cloak - Stealth (RECIPE!)
								i(29721),	-- Pattern: Nethercleft Leg Armor (RECIPE!)
								i(31390),	-- Plans: Wildguard Breastplate (RECIPE!)
								i(31356),	-- Recipe: Flask of Distilled Wisdom (RECIPE!)
								i(22922),	-- Recipe: Major Nature Protection Potion (RECIPE!)
								i(29170),	-- Windcaller's Orb
							},
						}),
					}),
					n(18015, {	-- Gambarinka <Tradesman>
						["coord"] = { 31.6, 49.2, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(27694),	-- Recipe: Blackened Trout (RECIPE!)
						},
					}),
					n(18005, {	-- Haalrun <Alchemy Supplies>
						["coord"] = { 67.8, 48.0, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(22909, {	-- Recipe: Elixir of Major Defense (RECIPE!)
								["isLimited"] = true,
							}),
							i(22902, {	-- Recipe: Elixir of Major Frost Power (RECIPE!)
								["isLimited"] = true,
							}),
							i(22907, {	-- Recipe: Super Mana Potion (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(18564, {	-- Horde Field Scout
						["coord"] = { 33.0, 49.0, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(27930, {	-- Splintermark
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							i(27939, {	-- Incendic Rod
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							-- #if BEFORE MOP
							i(27928, {	-- Terminal Edge
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							i(27989, {	-- Idol of Savagery
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							i(27949, {	-- Libram of Zeal
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							-- #endif
							i(27920, {	-- Mark of Conquest
								["cost"] = { { "i", 24581, 30 }, },	-- 30x Mark of Thrallmar
							}),
							i(27924, {	-- Mark of Defiance
								["cost"] = { { "i", 24581, 30 }, },	-- 30x Mark of Thrallmar
							}),
							i(27926, {	-- Mark of Vindication
								["cost"] = { { "i", 24581, 30 }, },	-- 30x Mark of Thrallmar
							}),
							-- #if BEFORE MOP
							i(27947, {	-- Totem of Impact
								["timeline"] = { REMOVED_5_0_4 },
								["cost"] = { { "i", 24581, 15 }, },	-- 15x Mark of Thrallmar
							}),
							-- #endif
						},
					}),
					n(18911, {	-- Juno Dufrain <Fishing Trainer>
						["coord"] = { 78.0, 66.0, ZANGARMARSH },
						["groups"] = {
							i(27532, {	-- Master Fishing - The Art of Angling
								["timeline"] = { REMOVED_3_1_0 },
								["rank"] = 5,
							}),
							i(27696),	-- Recipe: Blackened Sporefish (RECIPE!)
						},
					}),
					n(19694, {	-- Loolruna <Armorer>
						["coord"] = { 68.6, 50.2, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(23596, {	-- Plans: Adamantite Breastplate (RECIPE!)
								["isLimited"] = true,
							}),
							i(23594, {	-- Plans: Adamantite Plate Bracers (RECIPE!)
								["isLimited"] = true,
							}),
							i(23595, {	-- Plans: Adamantite Plate Gloves (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(19722, {	-- Muheru the Weaver <Tailoring Supplies>
						["coord"] = { 40.4, 28.2, ZANGARMARSH },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(21899, {	-- Pattern: Imbued Netherweave Boots (RECIPE!)
								["isLimited"] = true,
							}),
							i(21898, {	-- Pattern: Imbued Netherweave Pants (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(23373, {	-- Mortog Steamhead
						["description"] = "Will only serve players who are Exalted with Cenarion Expedition.",
						["minReputation"] = { FACTION_CENARION_EXPEDITION, EXALTED },	-- Cenarion Expedition, Exalted.
						["timeline"] = { ADDED_2_1_0 },
					}),
					n(18382, {	-- Mycah <Sporeggar Quartermaster>
						["coord"] = { 18.27, 51.12, ZANGARMARSH },
						["groups"] = bubbleDownClassicRep(FACTION_SPOREGGAR, {
							{		-- Neutral
								i(144262, {	-- Fungal Lifestalk
									["timeline"] = { ADDED_7_2_0 },
									["cost"] = { { "i", 24245, 20 }, },	-- 20x Glowcap
								}),
								i(24539, {	-- Marsh Lichen
									["cost"] = { { "i", 24245, 2 }, },	-- 2x Glowcap
								}),
								i(30156, {	-- Recipe: Clam Bar (RECIPE!)
									["cost"] = { { "i", 24245, 1 }, },	-- 1x Glowcap
								}),
								i(27689, {	-- Recipe: Sporeling Snack (RECIPE!)
									["timeline"] = { REMOVED_4_2_0 },
									["cost"] = { { "i", 24245, 2 }, },	-- 2x Glowcap
								}),
								i(144265, {	-- Rimecap
									["timeline"] = { ADDED_7_2_0 },
									["cost"] = { { "i", 24245, 20 }, },	-- 20x Glowcap
								}),
								i(144276, {	-- Sack of Healing Spores
									["timeline"] = { ADDED_7_2_0 },
									["cost"] = { { "i", 24245, 1 }, },	-- 1x Glowcap
								}),
								i(144261, {	-- Sporeggium
									["timeline"] = { ADDED_7_2_0 },
									["cost"] = { { "i", 24245, 10 }, },	-- 10x Glowcap
								}),
							}, {	-- Friendly
								i(25548, {	-- Tallstalk Mushroom
									["cost"] = { { "i", 24245, 1 }, },	-- 1x Glowcap
								}),
							}, {	-- Honored
								i(25827, {	-- Muck-Covered Drape
									["cost"] = { { "i", 24245, 25 }, },	-- 25x Glowcap
								}),
								i(25828, {	-- Petrified Lichen Guard
									["cost"] = { { "i", 24245, 15 }, },	-- 15x Glowcap
								}),
								i(25550, {	-- Redcap Toadstool
									["cost"] = { { "i", 24245, 1 }, },	-- 1x Glowcap
								}),
							}, {	-- Revered
								i(29150, {	-- Hardened Stone Shard
									["cost"] = { { "i", 24245, 45 }, },	-- 45x Glowcap
								}),
								i(38229, {	-- Pattern: Mycah's Botanical Bag (RECIPE!)
									["cost"] = { { "i", 24245, 25 }, },	-- 25x Glowcap
								}),
								i(22916, {	-- Recipe: Transmute Primal Earth to Water (RECIPE!)
									["cost"] = { { "i", 24245, 25 }, },	-- 25x Glowcap
								}),
								i(29149, {	-- Sporeling's Firestick
									["cost"] = { { "i", 24245, 20 }, },	-- 20x Glowcap
								}),
							}, {	-- Exalted
								i(31775, {	-- Sporeggar Tabard
									["cost"] = { { "i", 24245, 10 }, },	-- 10x Glowcap
								}),
								i(34478, {	-- Tiny Sporebat (PET!)
									["cost"] = { { "i", 24245, 30 }, },	-- 30x Glowcap
								}),
								i(22906, {	-- Recipe: Shrouding Potion (RECIPE!)
									["cost"] = { { "i", 24245, 30 }, },	-- 30x Glowcap
								}),
							},
						}),
					}),
					n(18993, {	-- Naka <Cooking Supplies>
						["coord"] = { 78.5, 63.0, ZANGARMARSH },
						["groups"] = {
							i(27736, {	-- Master Cookbook
								["timeline"] = { REMOVED_3_1_0 },
								["rank"] = 5,
							}),
						},
					}),
					n(18017, {	-- Seer Janidi <Reagents>
						["coord"] = { 32.4, 51.8, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(22902, {	-- Recipe: Elixir of Major Frost Power (RECIPE!)
								["isLimited"] = true,
							}),
							i(22901, {	-- Recipe: Sneaking Potion (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(18011, {	-- Zurai <Merchant>
						["coord"] = { 85.2, 54.6, ZANGARMARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(21899, {	-- Pattern: Imbued Netherweave Boots (RECIPE!)
								["isLimited"] = true,
							}),
							i(21898, {	-- Pattern: Imbued Netherweave Pants (RECIPE!)
								["isLimited"] = true,
							}),
							i(27695),	-- Recipe: Feltail Delight (RECIPE!)
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(24291, {	-- Bog Lord Tendril
						["crs"] = {
							18125,	-- Starving Fungal Giant
							18127,	-- Bog Lord
							19402,	-- Withered Bog Lord
							18124,	-- Withered Giant
							19519,	-- Starving Bog Lord
						},
					}),
					i(29960, {	-- Captured Firefly (item) / Firefly (PET!)
						["description"] = "Teaches you how to summon the pet Firefly. This is an extremely rare drop.",
						["timeline"] = { ADDED_2_1_0 },
						["crs"] = { 20197 },	-- Bogflare Needler
					}),
					i(24449, {	-- Fertile Spore
						["crs"] = {
							18281,	-- Boglash
							18129,	-- Greater Sporebat
							18134,	-- Fen Strider
							18128,	-- Sporebat
							18135,	-- Marsh Walker
							18280,	-- Sporewing
						},
					}),
					i(24401, {	-- Unidentified Plant Parts
						["description"] = "Lauranna Thar'well in Cenarion Refugee will accept these and increase your reputation with Cenarion Expedition. The repeatable quest is only available until you become Honoured with the faction.",
					}),
				}),
			},
		})),
	})),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
	m(OUTLAND, {
		m(ZANGARMARSH, {
			n(QUESTS, {
				q(9734),	-- Return to the Marsh (NYI) - completed with quest 9732
				q(9733),	-- Warning the Cenarion Circle (NYI) - completed with quest 9724
			}),
		}),
	}),
})));
