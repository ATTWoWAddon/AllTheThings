---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHADOWMOON_VALLEY, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
			["lore"] = "Shadowmoon Valley is a fel-infused zone intended for level 25-30 players in southeastern Outland. Illidan Stormrage resides there in the Black Temple, as well as Maiev Shadowsong, held captive there by the Broken. There are several elite areas that document the destruction of the Burning Legion, as well as Illidan's methods of training demon hunters.",
			["icon"] = 236816,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(864),	-- Explore Shadowmoon Valley
					ach(1195, {	-- Shadow of the Betrayer
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							-- Wildhammer Stronghold
							10776,	-- Dissension Amongst the Ranks...
							10678,	-- The Main Course!
							10744,	-- News of Victory (A)

							-- Shadowmoon Village
							10745,	-- News of Victory (H)

							-- Netherwing Ledge
							11041,	-- A Job Unfinished...

							-- The First Death Knight (A)
							10645,	-- Teron Gorefiend, I Am...

							-- The First Death Knight (H)
							10639,	-- Teron Gorefiend, I Am...

							-- Borrowed Power
							10651,	-- Varedis Must Be Stopped (Exarch Onaala, Altar of Sha'tar)
							10692,	-- Varedis Must Be Stopped (Larissa Sunstrike, Sanctum of the Stars)

							-- Akama's Promise
							10708,	-- Akama's Promise

							-- The Cipher of Damnation
							10588,	-- The Cipher of Damnation

							-- Anti-Demon Weapons
							10679,	-- Quenching the Blade

							-- The Dark Conclave
							10808,	-- Thwart the Dark Conclave
						},
						-- #endif
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						425,	-- Ash Viper (PET!)
						414,	-- Scorpid (PET!)
						497,	-- Tainted Cockroach (PET!)
					}},
					["groups"] = {
						pet(519, {	-- Fel Flame (PET!)
							["description"] = "Found around the Hand of Gul'dan in old Shadowmoon Valley and fel areas in Tanaan.",
						}),
					},
				}),
				explorationHeader({
					visit_exploration(3754,{coord={63.3,29.9,SHADOWMOON_VALLEY}}),	-- Altar of Sha'tar
					exploration(3757),	-- Ata'mal Terrace
					exploration(3749),	-- Coilskar Cistern
					exploration(3750),	-- Coilskar Point
					visit_exploration(3950,{coord={52.1,71.9,SHADOWMOON_VALLEY}}),	-- Crimson Watch
					visit_exploration(3966,{coord={66.1,86.3,SHADOWMOON_VALLEY}}),	-- Dragonmaw Base Camp
					visit_exploration(3939,{coord={66.4,60.1,SHADOWMOON_VALLEY}}),	-- Dragonmaw Fortress
					visit_exploration(3967,{coord={74.6,78.0,SHADOWMOON_VALLEY}}),	-- Dragonmaw Skyway
					exploration(3822),	-- Eclipse Point
					visit_exploration(3930,{coord={40.3,68.0,SHADOWMOON_VALLEY}}),	-- Eclipsion Fields
					visit_exploration(3752,{coord={28.8,56.2,SHADOWMOON_VALLEY}}),	-- Illidari Point
					visit_exploration(3943,{coord={37.6,21.8,SHADOWMOON_VALLEY}}),	-- Invasion Point: Cataclysm
					exploration(3743),	-- Legion Hold
					visit_exploration(3758,{coord={63.5,54.2,SHADOWMOON_VALLEY}}),	-- Netherwing Fields
					exploration(3759),	-- Netherwing Ledge
					visit_exploration(3965,{coord={63.3,87.5,SHADOWMOON_VALLEY}}),	-- Netherwing Mines
					visit_exploration(3945,{coord={61.5,68.3,SHADOWMOON_VALLEY}}),	-- Netherwing Pass
					exploration(3927),	-- Oronok's Farm
					visit_exploration(3753,{coord={58.1,37.4,SHADOWMOON_VALLEY}}),	-- Ruins of Baa'ri
					exploration(3756),	-- Ruins of Karabor
					visit_exploration(3938,{coord={55.0,59.8,SHADOWMOON_VALLEY}}),	-- Sanctum of the Stars
					--exploration(3520),	-- Shadowmoon Valley (Wrath Classic: Can't be collected)
					exploration(3744),	-- Shadowmoon Village
					visit_exploration(3926,{coord={52.2,18.2,SHADOWMOON_VALLEY}}),	-- Shattered Plains
					exploration(3932),	-- Sketh'lon Base Camp
					visit_exploration(3933,{coord={37.2,28.9,SHADOWMOON_VALLEY}}),	-- Sketh'lon Wreckage
					exploration(3928),	-- The Altar of Damnation
					visit_exploration(3944,{coord={58.7,71.9,SHADOWMOON_VALLEY}}),	-- The Altar of Shadows
					exploration(3840),	-- The Black Temple
					visit_exploration(3748,{coord={40.5,39.6,SHADOWMOON_VALLEY}}),	-- The Deathforge
					exploration(3747),	-- The Fel Pits
					visit_exploration(3940,{coord={26.3,39.6,SHADOWMOON_VALLEY}}),	-- The Fetid Pool
					exploration(3746),	-- The Hand of Gul'dan
					visit_exploration(3929,{coord={53.5,65.8,SHADOWMOON_VALLEY}}),	-- The Path of Conquest
					visit_exploration(3821,{coord={61.3,49.3,SHADOWMOON_VALLEY}}),	-- Warden's Cage
					exploration(3745),	-- Wildhammer Stronghold
				}),
				n(FLIGHT_PATHS, {
					fp(140, {	-- Altar of Sha'tar, Shadowmoon Valley
						["cr"] = 19581,	-- Maddix <Flight Master>
						["coord"] = { 63.2, 30.4, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["altQuests"] = { 10553 },	-- Voren'thal the Seer
					}),
					fp(159, {	-- Sanctum of the Stars, Shadowmoon Valley
						["cr"] = 21766,	-- Alieshor <Flight Master>
						["coord"] = { 56.2, 57.8, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["altQuests"] = { 10554 },	-- Ishanah
					}),
					fp(123, {	-- Shadowmoon Village, Shadowmoon Valley
						["cr"] = 19317,	-- Drek'Gol <Wind Rider Master>
						["coord"] = { 30.2, 29.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
					}),
					fp(124, {	-- Wildhammer Stronghold, Shadowmoon Valley
						["cr"] = 18939,	-- Brubeck Stormfoot <Gryphon Master>
						["coord"] = { 37.6, 55.4, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({
					n(66557, {	-- Bloodknight Antari <Grand Master Pet Tamer>
						["coord"] = { 30.6, 41.8, SHADOWMOON_VALLEY },
						["description"] = "Antari's pets are level 24 of the following consecutive pet classes:\n1. Magic - use Dragonkin (powerful) or Mechanical (tanky) pet.\n2. Elemental - use Aquatic (powerful) or Critter (tanky) pet.\n3. Dragonkin - use Humanoid (powerful) or Undead (tanky) pet.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Crystal Spider (Strike/Brittle Webbing/Leech Life) and Sporeling Sprout (Jab/Leech Seed/Crouch).",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 24,
						["groups"] = {
							q(31926, {	-- Grand Master Antari
								["sourceAchievement"] = 6604,	-- Taming Outland
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
					q(31920, {	-- Grand Master Antari
						["sourceQuests"] = {
							31919,	-- Battle Pet Tamers: Outland (A)
							31921,	-- Battle Pet Tamers: Outland (H)
						},
						["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
						["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							objective(1, {	-- Defeat Grand Master Antari
								["provider"] = { "n", 66557 },	-- Bloodknight Antari
								["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
							}),
							i(89125),	-- Sack of Pet Supplies
						},
					}),
					q(31981, {	-- Exceeding Expectations (A)
						["sourceQuest"] = 31920,	-- Grand Master Antari
						["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
						["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
						["timeline"] = { ADDED_5_0_4 },
						["maps"] = { STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31982, {	-- Exceeding Expectations (H)
						["sourceQuest"] = 31920,	-- Grand Master Antari
						["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
						["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
						["timeline"] = { ADDED_5_0_4 },
						["maps"] = { ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
				}),
				n(PROFESSIONS, {
					prof(ENGINEERING, {
						["crs"] = {
							24868,	-- Niobe Whizzlespark <Engineering Trainer>
							25099,	-- Jonathan Garrett <Engineering Trainer>
						},
						["coords"] = {
							{ 36.6, 55.0, SHADOWMOON_VALLEY },
							{ 29.2, 28.6, SHADOWMOON_VALLEY },
						},
						["groups"] = {
							r(44155, {	-- Flying Machine
								["timeline"] = { ADDED_2_3_0 },
							}),
							r(44157, {	-- Turbo-Charged Flying Machine
								["timeline"] = { ADDED_2_3_0 },
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(10642, {	-- A Ghost in the Machine
						["sourceQuest"] = 11045,	-- Zorus the Judicator
						["qg"] = 21774,	-- Zorus the Judicator
						["coord"] = { 37, 56.4, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/15 Ever-burning Ash
								["providers"] = {
									{ "i",  30716 },	-- Ever-burning Ash
									{ "o", 184948 },	-- Ever-burning Ash
								},
								["coord"] = { 32.2, 37.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10702, {	-- A Grunt's Work...
						["qg"] = 21769,	-- Overlord Or'barokh
						["coord"] = { 28.4, 26.4, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/20 Shadowmoon Valley Wildlife slain
								["providers"] = {
									{ "n", 21864 },	-- Scorchshell Pincer
									{ "n", 21878 },	-- Felboar
									{ "n", 21879 },	-- Vilewing Chimaera
									{ "n", 23020 },	-- Shadow Serpent
								},
							}),
						},
					}),
					q(10624, {	-- A Haunted History
						["sourceQuests"] = 11046,	-- Chief Apothecary Hildagard
						["qg"] = 21772,	-- Chief Apothecary Hildagard
						["coord"] = { 29.9, 27.6, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/15 Ever-Burning Ash
								["providers"] = {
									{ "i",  30716 },	-- Ever-Burning Ash
									{ "o", 184948 },	-- Ever-burning Ash
								},
								["coord"] = { 32.2, 37.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10515, {	-- A Lesson Learned
						["sourceQuest"] = 10514,	-- I Was a Lot of Things...
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/10	Ravenous Flayer Egg Destroyed
								["provider"] = { "o", 184684 },	-- Ravenous Flayer Egg
								["coord"] = { 57.2, 18, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10637, {	-- A Necessary Distraction (The Aldor)
						["sourceQuest"] = 10587,	-- Karabor Training Grounds
						["qg"] = 21860,	-- Exarch Onaala
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- Azaloth Freed
								["providers"] = {
									{ "i", 30811 },	-- Scroll of Demonic Unbanishing
									{ "n", 21506 },	-- Azaloth
								},
								["coord"] = { 69.8, 51.6, SHADOWMOON_VALLEY },
								["crs"] = {
									21505,	-- Sunfury Summoner
									21503,	-- Sunfury Warlock
								},
							}),
						},
					}),
					q(10688, {	-- A Necessary Distraction (The Scryers)
						["sourceQuest"] = 10687,	-- Karabor Training Grounds
						["qg"] = 21954,	-- Larissa Sunstrike
						["coord"] = { 55.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- Azaloth Freed
								["providers"] = {
									{ "i", 30811 },	-- Scroll of Demonic Unbanishing
									{ "n", 21506 },	-- Azaloth
								},
								["coord"] = { 69.8, 51.6, SHADOWMOON_VALLEY },
								["crs"] = {
									21505,	-- Sunfury Summoner
									21503,	-- Sunfury Warlock
								},
							}),
						},
					}),
					q(10664, {	-- Additional Materials
						["sourceQuests"] = {
							10662,	-- The Hermit Smith (A)
							10663,	-- The Hermit Smith (H)
						},
						["qg"] = 21465,	-- David Wayne
						["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
						["maps"] = { SHATTRATH_CITY },
						["cost"] = {
							{ "i", 23784, 1 },	-- Adamantite Frame
							{ "i", 23793, 4 },	-- Heavy Knothide Leather
							{ "i", 30823, 1 },	-- Demon Warding Totem
						},
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10628, {	-- Akama
						["sourceQuest"] = 10622,	-- Proof of Allegiance
						["qg"] = 21826,	-- Sanoru
						["coord"] = { 57.3, 49.5, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10708, {	-- Akama's Promise
						["sourceQuest"] = 10707,	-- The Ata'mal Terrace
						-- #if AFTER WRATH
						["altQuests"] = { 11052 },	-- Akama's Promise
						-- #endif
						["providers"] = {
							{ "n", 21700 },	-- Akama
							{ "i", 32646 },	-- Medallion of Karabor
						},
						["coord"] = { 58.1, 48.1, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30932),	-- Akama's Sash
							i(30999),	-- Ashtongue Blade
							i(31000),	-- Bloodwarder's Rifle
							i(30943),	-- Verdant Gloves
							i(30984),	-- Spellbreaker's Buckler
							i(31417),	-- Staff of the Ashtongue Deathsworn
						},
					}),
					-- #if AFTER WRATH
					q(11052, {	-- OLD Akama's Promise
						["sourceQuest"] = 10707,	-- The Ata'mal Terrace
						["altQuests"] = { 10708 },	-- Akama's Promise
						["providers"] = {
							{ "n", 21700 },	-- Akama
							{ "i", 32646 },	-- Medallion of Karabor
						},
						["coord"] = { 58.1, 48.1, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30932),	-- Akama's Sash
							i(30999),	-- Ashtongue Blade
							i(31000),	-- Bloodwarder's Rifle
							i(30943),	-- Verdant Gloves
							i(30984),	-- Spellbreaker's Buckler
							i(31417),	-- Staff of the Ashtongue Deathsworn
						},
					}),
					-- #endif
					q(10640, {	-- Altruis (The Aldor)
						["sourceQuest"] = 10637,	-- A Necessary Distraction
						["qg"] = 21860,	-- Exarch Onaala
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["maps"] = { NAGRAND },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10689, {	-- Altruis (The Scryers)
						["sourceQuest"] = 10688,	-- A Necessary Distraction
						["qg"] = 21954,	-- Larissa Sunstrike
						["coord"] = { 55.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["maps"] = { NAGRAND },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10870, {	-- Ally of the Netherwing
						["sourceQuest"] = 10866,	-- Zuluhed the Whacked
						-- #if AFTER WRATH
						["altQuests"] = { 10871 },	-- Ally of the Netherwing
						-- #endif
						["qg"] = 22112,	-- Karynaku
						["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["_drop"] = { "races" },	-- stop this from being marked as horde only when it is not horde only
						["groups"] = {
							i(31492),	-- Claw of the Netherwing Flight
							i(31491),	-- Netherwing Defender's Shield
							i(31490),	-- Netherwing Protector's Shield
							i(31494),	-- Netherwing Sorceror's Charm
							i(31493),	-- Netherwing Spiritualist's Charm
						},
					}),
					-- #if AFTER WRATH
					q(10871, {	-- Ally of the Netherwing
						["sourceQuest"] = 10866,	-- Zuluhed the Whacked
						["altQuests"] = { 10870 },	-- Ally of the Netherwing
						["qg"] = 22112,	-- Karynaku
						["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["_drop"] = { "races" },	-- stop this from being marked as horde only when it is not horde only
						["groups"] = {
							i(31492),	-- Claw of the Netherwing Flight
							i(31491),	-- Netherwing Defender's Shield
							i(31490),	-- Netherwing Protector's Shield
							i(31494),	-- Netherwing Sorceror's Charm
							i(31493),	-- Netherwing Spiritualist's Charm
						},
					}),
					-- #endif
					q(10527, {	-- Ar'tor, Son of Oronok
						["sourceQuest"] = 10519,	-- The Cipher of Damnation - Truth and History
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10777, {	-- Asghar's Totem
						["sourceQuests"] = {
							10759,	-- Find the Deserter (Alliance)
							10761,	-- Find the Deserter (Horde)
						},
						["qg"] = 22024,	-- Parshah
						["coords"] = {	-- questgiver pats up and down the road
							{ 35.4, 37.6, SHADOWMOON_VALLEY },
							{ 35.2, 40.4, SHADOWMOON_VALLEY },
							{ 35.4, 41.8, SHADOWMOON_VALLEY },
						},
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Sketh'lon War Totem
								["provider"] = { "i", 31169 },	-- Sketh'lon War Totem
								["coord"] = { 39, 29, SHADOWMOON_VALLEY },
								["cr"] = 22025,	-- Asghar
							}),
						},
					}),
					q(10676, {	-- Bane of the Illidari
						["sourceQuests"] = {
							10670,	-- Tear of the Earthmother
							10667,	-- Underworld Loam
						},
						["qg"] = 21465,	-- David Wayne
						["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10781, {	-- Battle of the Crimson Watch
						["sourceQuest"] = 10793,	-- The Journal of Val'zareq: Portends of War
						["provider"] = { "o", 185126 },	-- Crystal Prison
						["coord"] = { 51.4, 72.7, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- Crimson Sigil Forces Annihilated
								["provider"] = { "n", 22076 },	-- Torloth the Magnificent <The Crimson Sigil>
							}),
							i(31380),	-- Acrobat's Mark of the Sha'tar
							i(31381),	-- Aggressor's Mark of the Sha'tar
							i(31382),	-- Mage's Mark of the Sha'tar
							i(31383),	-- Spiritualist's Mark of the Sha'tar
							-- #if AFTER 7.0.3
							-- CRIEVE NOTE: With 7.0.3 the offering container is no longer a reward, you get the tabards directly.
							i(31404),	-- Green Trophy Tabard of the Illidari
							i(31405),	-- Purple Trophy Tabard of the Illidari
							-- #else
							i(31408, {	-- Offering of the Sha'tar
								i(31404),	-- Green Trophy Tabard of the Illidari
								i(31405),	-- Purple Trophy Tabard of the Illidari
							}),
							-- #endif
						},
					}),
					{	-- Besieged!
						["allianceQuestData"] = q(10562, {	-- Besieged! (A)
							["sourceQuests"] = {
								11043,	-- Building a Better Gryphon
								11044,	-- Visions of Destruction
								-- #if AFTER 7.3.5.25600
								49550,	-- Hero's Call: Shadowmoon Valley! (Outland)
								-- #endif
							},
							["qg"] = 21357,	-- Wing Commander Nuainn
							["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10595, {	-- Besieged! (H)
							["sourceQuests"] = {
								11048,	-- Kroghan's Report
								11047,	-- The Apprentice's Request
								-- #if AFTER 7.3.5.25600
								49532,	-- Warchief's Command: Shadowmoon Valley!
								-- #endif
							},
							["qg"] = 21359,	-- Blood Guard Gulmok
							["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Infernal Attacker slain
								["providers"] = {
									{ "n", 21419 },	-- Infernal Attacker
									{ "n", 21786 },	-- Infernal Attacker
								},
							}),
						},
					},
					{	-- Blast the Infernals!
						["allianceQuestData"] = q(10564, {	-- Blast the Infernals! (A)
							["sourceQuest"] = 10572,	-- Setting Up the Bomb (A)
							["qg"] = 21357,	-- Wing Commander Nuainn
							["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10598, {	-- Blast the Infernals! (H)
							["sourceQuest"] = 10597,	-- Setting Up the Bomb (H)
							["qg"] = 21359,	-- Blood Guard Gulmok
							["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Destroy Legion Hold Infernals
								["provider"] = { "i", 30614 },	-- Fel Bomb
								["coord"] = { 22.6, 39.9, SHADOWMOON_VALLEY },
							}),
							i(30986),	-- Bloodforged Guard
							i(30947),	-- Crimson Mail Hauberk
							i(30946),	-- Mooncrest Headdress
							i(30929),	-- Soothsayer's Kilt
						},
					},
					q(10774, {	-- Blood Elf + Giant = ???
						["description"] = "Use your Wildhammer Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
						["sourceQuest"] = 10773,	-- Breaching the Path
						["providers"] = {
							{ "n", 22059 },	-- Wildhammer Gryphon Rider
							{ "i", 31310 },	-- Wildhammer Flare Gun (Provided)
						},
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Chancellor Bloodleaf slain
								["provider"] = { "n", 22012 },	-- Chancellor Bloodleaf
								["coord"] = { 53, 70.6, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Corok the Mighty slain
								["provider"] = { "n", 22011 },	-- Corok the Mighty
								["coord"] = { 53.6, 69.8, SHADOWMOON_VALLEY },
							}),
							objective(3, {	-- 0/1 Illidan's Command
								["provider"] = { "i", 31271 },	-- Illidan's Command
								["coord"] = { 53, 70.6, SHADOWMOON_VALLEY },
								["cr"] = 22012,	-- Chancellor Bloodleaf
							}),
						},
					}),
					q(10546, {	-- Borak, Son of Oronok
						["sourceQuest"] = 10519,	-- The Cipher of Damnation - Truth and History
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10773, {	-- Breaching the Path (A)
						["description"] = "Use your Wildhammer Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
						["sourceQuest"] = 10772,	-- The Path of Conquest (A)
						["providers"] = {
							{ "n", 22059 },	-- Wildhammer Gryphon Rider
							{ "i", 31310 },	-- Wildhammer Flare Gun (Provided)
						},
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/20 Eclipsion Soldier slain
								["provider"] = { "n", 22016 },	-- Eclipsion Soldier
							}),
							objective(2, {	-- 0/10 Eclipsion Cavalier slain
								["provider"] = { "n", 22018 },	-- Eclipsion Cavalier
							}),
							objective(3, {	-- 0/5 Son of Corok slain
								["provider"] = { "n", 19824 },	-- Son of Corok
							}),
						},
					}),
					q(10751, {	-- Breaching the Path (H)
						["description"] = "Use your Kor'kron Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
						["sourceQuest"] = 10750,	-- The Path of Conquest (H)
						["providers"] = {
							{ "n", 21998 },	-- Kor'kron Wind Rider
							{ "i", 31108 },	-- Kor'kron Flare Gun (Provided)
						},
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/20 Eclipsion Soldier slain
								["provider"] = { "n", 22016 },	-- Eclipsion Soldier
							}),
							objective(2, {	-- 0/10 Eclipsion Cavalier slain
								["provider"] = { "n", 22018 },	-- Eclipsion Cavalier
							}),
							objective(3, {	-- 0/10 Eclipsion Spellbinder slain
								["provider"] = { "n", 22017 },	-- Eclipsion Spellbinder
							}),
						},
					}),
					{	-- Bring Down the Warbringer!
						["allianceQuestData"] = q(10586, {	-- Bring Down the Warbringer! (A)
							["sourceQuests"] = {
								10583,	-- The Fate of Flanis
								10585,	-- The Summoning Chamber (A)
							},
							["providers"] = {
								{ "n", 21471 },	-- Stormer Ewan Wildwing
								{ "i", 30688 },	-- Deathforge Key
							},
							["coord"] = { 40.4, 41.2, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10603, {	-- Bring Down the Warbringer! (H)
							["sourceQuests"] = {
								10601,	-- The Fate of Kagrosh
								10602,	-- The Summoning Chamber (H)
							},
							["providers"] = {
								{ "n", 21475 },	-- Scout Zagran
								{ "i", 30688 },	-- Deathforge Key
							},
							["coord"] = { 38.5, 38.1, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Warbringer Razuun slain
								["provider"] = { "n", 21287 },	-- Warbringer Razuun
								["coord"] = { 39, 46, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Razuun's Orders
								["provider"] = { "i", 30689 },	-- Razuun's Orders
								["cr"] = 21287,	-- Warbringer Razuun
							}),
						},
					},
					q(11043, {	-- Building a Better Gryphon
						["qg"] = 21107,	-- Rip Pedalslam
						["coord"] = { 61.2, 70.4, BLADES_EDGE_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 20),
					}),
					{	-- Capture the Weapons
						["allianceQuestData"] = q(10626, {	-- Capture the Weapons (A)
							["sourceQuest"] = 10621,	-- Illidari Bane-Shard (A)
							["qg"] = 19370,	-- Ordinn Thunderfist
							["coord"] = { 36.8, 54.8, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10627, {	-- Capture the Weapons (H)
							["sourceQuest"] = 10623,	-- Illidari Bane-Shard (H)
							["qg"] = 19333,	-- Grokom Deatheye
							["coord"] = { 29.8, 31.2, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Makazradon's Glaive
								["provider"] = { "i", 30786 },	-- Makazradon's Glaive
								["cr"] = 21501,	-- Makazradon
							}),
							objective(2, {	-- 0/1 Morgroron's Glaive
								["provider"] = { "i", 30785 },	-- Morgroron's Glaive
								["coord"] = { 23.2, 38.2, SHADOWMOON_VALLEY },
								["cr"] = 21500,	-- Morgroron
							}),
							i(30926),	-- Ashwalker's Footwraps
							i(30938),	-- Azurestrike Shoulders
							i(30950),	-- Darkhunter's Cinch
							i(30966),	-- Singed Vambraces
						},
					},
					q(11046, {	-- Chief Apothecary Hildagard
						["qg"] = 19678,	-- Fantei
						["coord"] = { 64.6, 70.6, SHATTRATH_CITY },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,	-- for "A Haunted History" in Shadowmoon Valley
						["lvl"] = lvlsquish(67, 67, 20),
					}),
					q(10528, {	-- Demonic Crystal Prisons
						["sourceQuest"] = 10527,	-- Ar'tor, Son of Oronok
						["qg"] = 21292,	-- Ar'tor, Son of Oronok
						["groups"] = {
							objective(1, {	-- 0/1 Crystalline Key
								["provider"] = { "i", 30442 },	-- Crystalline Key
								["cr"] = 21309,	-- Painmistress Gabrissa
							}),
						},
					}),
					{	-- Dissension Amongst the Ranks...
						["allianceQuestData"] = q(10776, {	-- Dissension Amongst the Ranks... (A)
							["description"] = "Use your Wildhammer Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
							["sourceQuest"] = 10775,	-- Tabards of the Illidari (A)
							["providers"] = {
								{ "n", 22059 },	-- Wildhammer Gryphon Rider
								{ "i", 31310 },	-- Wildhammer Flare Gun (Provided)
							},
							["coord"] = { 52.4, 68.4, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10769, {	-- Dissension Amongst the Ranks... (H)
							["description"] = "Use your Kor'kron Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
							["sourceQuest"] = 10768,	-- Tabards of the Illidari (H)
							["providers"] = {
								{ "n", 21998 },	-- Kor'kron Wind Rider
								{ "i", 31108 },	-- Kor'kron Flare Gun (Provided)
							},
						}),
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/5 Crazed Colossus slain while in disguise
								["provider"] = { "i", 31279 },	-- Enchanted Illidari Tabard (Provided)
								["cr"] = 19823,	-- Crazed Colossus
							}),
							-- #if AFTER CATA
							-- TODO: Do something about this being assumed a collectible.
							i(31279, {	-- Enchanted Illidari Tabard [Temp Quest Item]
								["collectible"] = false,
							}),
							-- #endif
							i(31075),	-- Evoker's Mark of the Redemption
							i(31078),	-- Protector's Mark of the Redemption
							i(31077),	-- Slayer's Mark of the Redemption
							i(31076),	-- Spellsword's Mark of the Redemption
						},
					},
					q(10634, {	-- Divination: Gorefiend's Armor
						["allianceQuestData"] = {
							["sourceQuest"] = 10644,	-- Teron Gorefiend - Lore and Legend (A)
						},
						["hordeQuestData"] = {
							["sourceQuest"] = 10633,	-- Teron Gorefiend - Lore and Legend (H)
						},
						["qg"] = 21797,	-- Ancient Shadowmoon Spirit
						["coord"] = { 58.2, 70.8, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Gorefiend's Armor
								["provider"] = { "i", 30797 },	-- Gorefiend's Armor
								["coord"] = { 69.8, 85.8, SHADOWMOON_VALLEY },
								["cr"] = 21801,	-- Vhelkur
							}),
						},
					}),
					q(10635, {	-- Divination: Gorefiend's Cloak
						["allianceQuestData"] = {
							["sourceQuest"] = 10644,	-- Teron Gorefiend - Lore and Legend (A)
						},
						["hordeQuestData"] = {
							["sourceQuest"] = 10633,	-- Teron Gorefiend - Lore and Legend (H)
						},
						["qg"] = 21797,	-- Ancient Shadowmoon Spirit
						["coord"] = { 58.2, 70.8, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Gorefiend's Cloak
								["provider"] = { "i", 30799 },	-- Gorefiend's Cloak
								["coord"] = { 64.4, 46.6, SHADOWMOON_VALLEY },
								["cr"] = 21815,	-- Cleric of Karabor
							}),
						},
					}),
					q(10636, {	-- Divination: Gorefiend's Truncheon
						["allianceQuestData"] = {
							["sourceQuest"] = 10644,	-- Teron Gorefiend - Lore and Legend (A)
						},
						["hordeQuestData"] = {
							["sourceQuest"] = 10633,	-- Teron Gorefiend - Lore and Legend (H)
						},
						["qg"] = 21797,	-- Ancient Shadowmoon Spirit
						["coord"] = { 58.2, 70.8, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Gorefiend's Truncheon
								["provider"] = { "i", 30800 },	-- Gorefiend's Truncheon
								["description"] = "The riders travel along the road counter clockwise, so travel clockwise to encounter them more quickly.",
								["coord"] = { 55.4, 57.2, SHADOWMOON_VALLEY },
								["cr"] = 21784,	-- Ghostrider of Karabor
							}),
						},
					}),
					q(10481, {	-- Enraged Spirits of Air
						["sourceQuest"] = 10480,	-- Enraged Spirits of Water
						["qg"] = 21024,	-- Earthmender Torlok
						["coord"] = { 42.2, 45.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Airy Soul Captured
								["provider"] = { "i", 30094 },	-- Totem of Spirits (Provided)
								["coord"] = { 59.2, 70.6, SHADOWMOON_VALLEY },
								["cr"] = 21060,	-- Enraged Air Spirit
							}),
							i(30953),	-- Boots of the Skybreaker
							i(30930),	-- Grips of the Void
							i(30942),	-- Manimal's Cinch
							i(30964),	-- Skybreaker's Pauldrons
						},
					}),
					q(10458, {	-- Enraged Spirits of Fire and Earth
						["sourceQuests"] = {
							10680,	-- The Hand of Gul'dan (A)
							10681,	-- The Hand of Gul'dan (H)
						},
						["qg"] = 21024,	-- Earthmender Torlok
						["coord"] = { 42.2, 45.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Earthen Soul Captured
								["provider"] = { "i", 30094 },	-- Totem of Spirits (Provided)
								["coord"] = { 44.8, 49.0, SHADOWMOON_VALLEY },
								["cr"] = 21050,	-- Enraged Earth Spirit
							}),
							objective(2, {	-- 0/8 Fiery Soul Captured
								["provider"] = { "i", 30094 },	-- Totem of Spirits (Provided)
								["coord"] = { 46.0, 43.8, SHADOWMOON_VALLEY },
								["cr"] = 21061,	-- Enraged Fire Spirit
							}),
						},
					}),
					q(10480, {	-- Enraged Spirits of Water
						["sourceQuest"] = 10458,	-- Enraged Spirits of Fire and Earth
						["qg"] = 21024,	-- Earthmender Torlok
						["coord"] = { 42.2, 45.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/5 Watery Soul Captured
								["provider"] = { "i", 30094 },	-- Totem of Spirits (Provided)
								["coord"] = { 51.0, 25.6, SHADOWMOON_VALLEY },
								["cr"] = 21059,	-- Enraged Water Spirit
							}),
						},
					}),
					q(10451, {	-- Escape from Coilskar Cistern
						["description"] = "Questgiver only becomes interactable after you kill Keeper of the Cistern at the back of the cave.",
						["qg"] = 21027,	-- Earthmender Wilda
						["coord"] = { 52.1, 18.8, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30927),	-- Earthmender's Bracer of Shattering
							i(30952),	-- Earthmender's Crimson Spaulders
							i(30937),	-- Earthmender's Fists of Undoing
							i(30968),	-- Earthmender's Plated Boots
						},
					}),
					q(10673, {	-- Felspine the Greater
						["sourceQuest"] = 10672,	-- Frankly, It Makes No Sense...
						["qg"] = 21770,	-- Researcher Tiorus
						["coord"] = { 30, 28.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Felspine's Hide
								["provider"] = { "i", 30851 },	-- Felspine's Hide
								["coord"] = { 55.6, 43.4, SHADOWMOON_VALLEY },
								["cr"] = 21897,	-- Felspine the Greater
							}),
						},
					}),
					q(10759, {	-- Find the Deserter (A)
						["sourceQuest"] = 10569,	-- The Sketh'lon Wreckage (A)
						["qg"] = 22042,	-- Gryphonrider Kieran
						["coord"] = { 38.7, 54.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10761, {	-- Find the Deserter (H)
						["sourceQuest"] = 10760,	-- The Sketh'lon Wreckage (H)
						["qg"] = 22043,	-- Sergeant Kargrul
						["coord"] = { 31, 29.8, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10672, {	-- Frankly, It Makes No Sense...
						["sourceQuest"] = 10660,	-- What Strange Creatures
						["qg"] = 21770,	-- Researcher Tiorus
						["coord"] = { 30, 28.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					{	-- Gaining Access
						["allianceQuestData"] = q(10589, {	-- Gaining Access (A)
							["sourceQuest"] = 10586,	-- Bring Down the Warbringer! (A)
							["qg"] = 21357,	-- Wing Commander Nuainn
							["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10604, {	-- Gaining Access (H)
							["sourceQuest"] = 10603,	-- Bring Down the Warbringer! (H)
							["qg"] = 21359,	-- Blood Guard Gulmok
							["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Legion Teleporter Control
								["provider"] = { "i", 30695 },	-- Legion Teleporter Control
								["coord"] = { 23.4, 35.6, SHADOWMOON_VALLEY },
								["cr"] = 19755,	-- Mo'arg Weaponsmith
							}),
						},
					},
					q(10521, {	-- Grom'tor, Son of Oronok
						["sourceQuest"] = 10519,	-- The Cipher of Damnation - Truth and History
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10643, {	-- Harbingers of Shadowmoon
						["sourceQuest"] = 10642,	-- A Ghost in the Machine
						["qg"] = 21774,	-- Zorus the Judicator
						["coord"] = { 37, 56.4, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/12 Shadowmoon Harbinger
								["provider"] = { "i", 30719 },	-- Spectrecles (Provided)
								["cr"] = 21795,	-- Shadowmoon Harbinger
							}),
							i(30719),	-- Spectrecles
						},
					}),
					heroscall(q(49550, {	-- Hero's Call: Shadowmoon Valley! (Outland)
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 25),
					})),
					{	-- Illidari Bane-Shard
						["allianceQuestData"] = q(10621, {	-- Illidari Bane-Shard (A)
							["provider"] = { "i", 30756 },	-- Illidari Bane-Shard (A)
						}),
						["hordeQuestData"] = q(10623, {	-- Illidari Bane-Shard (H)
							["provider"] = { "i", 30579 },	-- Illidari Bane-Shard (H)
						}),
						["coord"] = { 23.0, 35.6, SHADOWMOON_VALLEY },
						["crs"] = { 21499 },	-- Overseer Ripwsaw
						["lvl"] = lvlsquish(67, 67, 25),
					},
					q(10782, {	-- Imbuing the Headpiece
						["sourceQuest"] = 10780,	-- Sketh'lon Feathers
						["qg"] = 22024,	-- Parshah
						["coords"] = {	-- questgiver pats up and down the road
							{ 35.4, 37.6, SHADOWMOON_VALLEY },
							{ 35.2, 40.4, SHADOWMOON_VALLEY },
							{ 35.4, 41.8, SHADOWMOON_VALLEY },
						},
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Energized Headpiece
								["providers"] = {
									{ "i", 31365 },	-- Energized Headpiece
									{ "i", 31360 },	-- Unfinished Headpiece
								},
								["coord"] = { 43.1, 45.3, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10836, {	-- Infiltrating Dragonmaw Fortress
						["sourceQuest"] = 10814,	-- Neltharaku's Tale
						["qg"] = 21657,	-- Neltharaku
						["coord"] = { 61.9, 60.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/15 Dragonmaw Orc slain
								["providers"] = {
									{ "n", 22197},	-- Dragonmaw Orc
									{ "n", 21717},	-- Dragonmaw Wrangler
									{ "n", 21718},	-- Dragonmaw Subjugator
									{ "n", 21719},	-- Dragonmaw Drake-Rider
									{ "n", 21720},	-- Dragonmaw Shaman
									{ "n", 22251},	-- Dragonmaw Archer
									{ "n", 22252},	-- Dragonmaw Peon
									{ "n", 22274},	-- Dragonmaw Skybreaker
									{ "n", 22331},	-- Dragonmaw Elite
									{ "n", 23188},	-- Dragonmaw Transporter
									{ "n", 23213},	-- Dragonmaw Peon Mutton
								},
							}),
						},
					}),
					q(10766, {	-- Invasion Point: Cataclysm (A)
						["sourceQuest"] = 10589,	-- Gaining Access (A)
						["qg"] = 21357,	-- Wing Commander Nuainn
						["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10767, {	-- Invasion Point: Cataclysm (H)
						["sourceQuest"] = 10604,	-- Gaining Access (H)
						["qg"] = 21359,	-- Blood Guard Gulmok
						["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10514, {	-- I Was A Lot Of Things...
						["sourceQuest"] = 10513,	-- Oronok Torn-heart
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/10	Shadowmoon Tuber
								["providers"] = {
									{ "i",  30356 },	-- Shadowmoon Tuber
									{ "o", 184691 },	-- Shadowmoon Tuber
									{ "i",  30462 },	-- Oronok's Boar Whistle (Provided)
								},
								["coord"] = { 53.8, 17.7, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10587, {	-- Karabor Training Grounds (The Aldor)
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["qg"] = 21860,	-- Exarch Onaala
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Sunfury Glaive
								["provider"] = { "i", 30679 },	-- Sunfury Glaive
								["crs"] = {
									21179,	-- Demon Hunter Supplicant
									21180,	-- Demon Hunter Initiate
								},
							}),
						},
					}),
					q(10687, {	-- Karabor Training Grounds (The Scryers)
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["qg"] = 21954,	-- Larissa Sunstrike
						["coord"] = { 55.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Sunfury Glaive
								["provider"] = { "i", 30679 },	-- Sunfury Glaive
								["crs"] = {
									21179,	-- Demon Hunter Supplicant
									21180,	-- Demon Hunter Initiate
								},
							}),
						},
					}),
					q(10858, {	-- Karynaku
						["sourceQuest"] = 10854,	-- The Force of Neltharaku
						["qg"] = 21657,	-- Neltharaku
						["coord"] = { 61.9, 60.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
					}),
					q(10804, {	-- Kindness
						["qg"] = 22113,	-- Mordenai
						["coord"] = { 59.3, 58.7, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Mature Netherwing Drake fed
								["providers"] = {
									{ "n", 21648 },	-- Mature Netherwing Drake
									{ "i", 31372 },	-- Rocknail Flayer Carcass
								},
								["coord"] = { 62.0, 58.2, SHADOWMOON_VALLEY },
								["cr"] = 21477,	-- Rocknail Flayer
							}),
						},
					}),
					q(11048, {	-- Kroghan's Report
						["qg"] = 18090,	-- Captain Kroghan
						["coord"] = { 55.4, 37.6, NAGRAND },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					{	-- Learning to Fly
						["allianceQuestData"] = q(11497),	-- Learning to Fly (A)
						["hordeQuestData"] = q(11498),	-- Learning to Fly (H)
						["qg"] = 18940,	-- Nutral
						["coord"] = { 63.8, 41, SHATTRATH_CITY },
						["timeline"] = { REMOVED_4_0_3 },
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(70, 70, 25),
					},
					q(10537, {	-- Lohn'goron, Bow of the Torn-heart
						["sourceQuest"] = 10528,	-- Demonic Crystal Prisons
						["qg"] = 21318,	-- Spirit of Ar'tor
						["coord"] = { 29.6, 50.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Lohn'goron, Bow of the Torn-Heart
								["provider"] = { "i", 30451 },	-- Lohn'goron, Bow of the Torn-Heart
								["crs"] = {
									19799,	-- Illidari Dreadbringer
									19800,	-- Illidari Painlasher
									19801,	-- Illidari Agonizer
									19802,	-- Illidari Shocktrooper
									19803,	-- Illidari Destroyer
									19812,	-- Illidari Informant
									19820,	-- Illidari Executioner
									19821,	-- Illidari Peacekeer
									19822,	-- Illidari Brute
									21166,	-- Illidari Dreadlord
									21337,	-- Illidari Shadowstalker
									21520,	-- Illidari Jailor
									21656,	-- Illidari Satyr
									21762,	-- Illidari Tormentor
									21808,	-- Illidari Overseer
								},
							}),
						},
					}),
					q(10826, {	-- Marks of Sargeras
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["qg"] = 22214,	-- Harbinger Saronen
						["coord"] = { 62.2, 29.8, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					{	-- Minions of the Shadow Council
						["allianceQuestData"] = q(10582, {	-- Minions of the Shadow Council (A)
							["sourceQuest"] = 10573,	-- The Deathforge (A)
							["qg"] = 21471,	-- Stormer Ewan Wildwing
							["coord"] = { 40.4, 41.3, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10600, {	-- Minions of the Shadow Council (H)
							["sourceQuest"] = 10599,	-- The Deathforge (H)
							["qg"] = 21475,	-- Scout Zagran
							["coord"] = { 38.5, 38.1, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Deathforge Guardian slain
								["provider"] = { "n", 20878 },	-- Deathforge Guardian
							}),
							objective(2, {	-- 0/5 Deathforge Summoner slain
								["provider"] = { "n", 20872 },	-- Deathforge Summoner
							}),
						},
					},
					q(10827, {	-- More Marks of Sargeras
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["qg"] = 22214,	-- Harbinger Saronen
						["coord"] = { 62.2, 29.8, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["maxReputation"] = { FACTION_THE_ALDOR, EXALTED },	-- The Aldor, Exalted.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
						["repeatable"] = true,
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10823, {	-- More Sunfury Signets
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["qg"] = 22211,	-- Battlemage Vyara
						["coord"] = { 56.2, 58.7, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["maxReputation"] = { FACTION_THE_SCRYERS, EXALTED },	-- The Scryers, Exalted.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
						["repeatable"] = true,
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10814, {	-- Neltharaku's Tale
						["sourceQuest"] = 10811,	-- Seek Out Neltharaku
						["qg"] = 21657,	-- Neltharaku
						["coord"] = { 61.9, 60.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					{	-- News of Victory
						["allianceQuestData"] = q(10744, {	-- News of Victory (A)
							["sourceQuest"] = 10612,	-- The Fel and the Furious
							["qg"] = 21790,	-- Plexi
							["coord"] = { 40.8, 22.2, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10745, {	-- News of Victory (H)
							["sourceQuest"] = 10613,	-- The Fel and the Furious
							["qg"] = 21789,	-- Nakansi
							["coord"] = { 27.4, 21.2, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							i(30973),	-- Band of Anguish
							i(30924),	-- Gloves of the High Magus
							-- #if BEFORE MOP
							i(31025, {	-- Idol of the Avenger
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(31033, {	-- Libram of Righteous Power
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(31031, {	-- Stormfury Totem
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					},
					q(10547, {	-- Of Thistleheads and Eggs...
						["sourceQuest"] = 10546,	-- Borak, Son of Oronok
						["qg"] = 21293,	-- Borak, Son of Oronok
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["maps"] = { SHATTRATH_CITY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Rotten Arakkoa Egg
								["providers"] = {
									{ "i",  30500 },	-- Rotten Arakkoa Egg
									{ "o", 184795 },	-- Rotten Arakkoa Egg
								},
							}),
						},
					}),
					q(10513, {	-- Oronok Torn-heart
						["sourceQuest"] = 10481,	-- Enraged Spirits of Air
						["qg"] = 21024,	-- Earthmender Torlok
						["coord"] = { 42.2, 45.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10571, {	-- Oronu the Elder (The Aldor)
						["sourceQuest"] = 10568,	-- Tablets of Baa'ri (The Aldor)
						["qg"] = 21402,	-- Anchorite Ceyla
						["coord"] = { 62.6, 28.4, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Orders From Akama
								["provider"] = { "i", 30649 },	-- Orders From Akama
								["coord"] = { 57, 33.6, SHADOWMOON_VALLEY },
								["cr"] = 21663,	-- Oronu the Elder
							}),
						},
					}),
					q(10684, {	-- Oronu the Elder (The Scryers)
						["sourceQuest"] = 10683,	-- Tablets of Baa'ri (The Scryers)
						["qg"] = 21955,	-- Arcanist Thelis
						["coord"] = { 56.2, 59.6, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Orders From Akama
								["provider"] = { "i", 30649 },	-- Orders From Akama
								["coord"] = { 57, 33.6, SHADOWMOON_VALLEY },
								["cr"] = 21663,	-- Oronu the Elder
							}),
						},
					}),
					q(10622, {	-- Proof of Allegiance
						["sourceQuests"] = {
							10575,	-- The Warden's Cage (The Aldor)
							10686,	-- The Warden's Cage (The Scryers)
						},
						["qg"] = 21826,	-- Sanoru
						["coord"] = { 57.3, 49.5, SHADOWMOON_VALLEY },
						["groups"] = {
							objective(1, {	-- 0/1 Zandras slain
								["provider"] = { "n", 21827 },	-- Zandras
								["coord"] = { 58, 49.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10703, {	-- Put On Yer Kneepads...
						["qg"] = 21773,	-- Thane Yoregar
						["coord"] = { 36.2, 57.0, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/20 Shadowmoon Valley Wildlife slain
								["providers"] = {
									{ "n", 21864 },	-- Scorchshell Pincer
									{ "n", 21878 },	-- Felboar
									{ "n", 21879 },	-- Vilewing Chimaera
									{ "n", 23020 },	-- Shadow Serpent
								},
							}),
						},
					}),
					q(10679, {	-- Quenching the Blade
						["sourceQuest"] = 10676,	-- Bane of the Illidari
						["qg"] = 21465,	-- David Wayne
						["coord"] = { 77.4, 38.6, TEROKKAR_FOREST },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Quenched Illidari-Bane Blade
								["providers"] = {
									{ "i",  30876 },	-- Quenched Illidari-Bane Blade
									{ "o", 185032 },	-- Forged Illidari Bane Blade
								},
								["coord"] = { 51.9, 40.2, SHADOWMOON_VALLEY },
							}),
							i(30788),	-- Illidari-Bane Broadsword
							i(30789),	-- Illidari-Bane Claymore
							i(31745),	-- Illidari-Bane Dagger
							i(30787),	-- Illidari-Bane Mageblade
						},
					}),
					q(10816, {	-- Reclaiming Holy Ground
						["sourceQuest"] = 10619,	-- The Ashtongue Tribe
						["qg"] = 21822,	-- Vindicator Aluumen
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Shadowmoon Slayer slain
								["provider"] = { "n", 22082 },	-- Shadowmoon Slayer
							}),
							objective(2, {	-- 0/8 Shadowmoon Chosen slain
								["provider"] = { "n", 22084 },	-- Shadowmoon Chosen
							}),
							objective(3, {	-- 0/4 Shadowmoon Darkweaver slain
								["provider"] = { "n", 22081 },	-- Shadowmoon Darkweaver
							}),
							i(30940),	-- Aged Leather Bindings
							i(30961),	-- Ash-Covered Helm
							i(30922),	-- Ata'mai Crown
							i(30958),	-- Blackened Chain Greaves
						},
					}),
					q(10811, {	-- Seek Out Neltharaku
						["sourceQuest"] = 10804,	-- Kindness
						["qg"] = 22113,	-- Mordenai
						["coord"] = { 59.3, 58.7, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
					}),
					{	-- Setting Up the Bomb
						["allianceQuestData"] = q(10572, {	-- Setting Up the Bomb (A)
							["sourceQuest"] = 10563,	-- To Legion Hold (A)
							["qg"] = 21357,	-- Wing Commander Nuainn
							["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10597, {	-- Setting Up the Bomb (H)
							["sourceQuest"] = 10596,	-- To Legion Hold (H)
							["qg"] = 21359,	-- Blood Guard Gulmok
							["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Fel Reaver Power Core
								["providers"] = {
									{ "i",  30628 },	-- Fel Reaver Power Core
									{ "o", 184859 },	-- Fel Reaver Power Core
								},
								["coord"] = { 26.2, 41.1, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Fel Reaver Armor Plate
								["providers"] = {
									{ "i",  30631 },	-- Fel Reaver Armor Plate
									{ "o", 184860 },	-- Fel Reaver Armor Plating
								},
								["coord"] = { 22.3, 35.5, SHADOWMOON_VALLEY },
							}),
						},
					},
					q(10828, {	-- Single Mark of Sargeras
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["qg"] = 22214,	-- Harbinger Saronen
						["coord"] = { 62.2, 29.8, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["maxReputation"] = { FACTION_THE_ALDOR, EXALTED },	-- The Aldor, Exalted.
						["cost"] = { { "i", 30809, 1 } },	-- Mark of Sargeras
						["repeatable"] = true,
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10822, {	-- Single Sunfury Signet
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["qg"] = 22211,	-- Battlemage Vyara
						["coord"] = { 56.2, 58.7, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["maxReputation"] = { FACTION_THE_SCRYERS, EXALTED },	-- The Scryers, Exalted.
						["cost"] = { { "i", 30810, 1 } },	-- Sunfury Signet
						["repeatable"] = true,
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10780, {	-- Sketh'lon Feathers
						["sourceQuest"] = 10778,	-- The Rod of Lianthe
						["qg"] = 22024,	-- Parshah
						["coords"] = {
							{ 35.4, 37.6, SHADOWMOON_VALLEY },
							{ 35.2, 40.4, SHADOWMOON_VALLEY },
							{ 35.4, 41.8, SHADOWMOON_VALLEY },
						},
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Sketh'lon Feather
								["providers"] = {
									{ "i",  31324 },	-- Sketh'lon Feather
									{ "o", 185130 },	-- Sketh'lon Feather
								},
								["coord"] = { 44.3, 59.3, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10625, {	-- Spectrecles
						["sourceQuest"] = 10624,	-- A Haunted History
						["qg"] = 21772,	-- Chief Apothecary Hildagard
						["coord"] = { 29.9, 27.6, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/12 Shadowmoon Zealot slain
								["provider"] = { "n", 21788 },	-- Shadowmoon Zealot
							}),
							i(30719),	-- Spectrecles
						},
					}),
					q(10661, {	-- Spleendid!
						["qg"] = 21777,	-- Gnomus
						["coord"] = { 36.6, 55.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Felfire Spleen
								["provider"] = { "i", 30819 },	-- Felfire Spleen
								["cr"] = 21408,	-- Felfire Diemetradon
							}),
						},
					}),
					q(10824, {	-- Sunfury Signets
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["qg"] = 22211,	-- Battlemage Vyara
						["coord"] = { 56.2, 58.7, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					{	-- Tabards of the Illidari
						["allianceQuestData"] = q(10775, {	-- Tabards of the Illidari (A)
							["description"] = "Use your Wildhammer Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
							["sourceQuest"] = 10774,	-- Blood Elf + Giant = ???
							["providers"] = {
								{ "n", 22059 },	-- Wildhammer Gryphon Rider
								{ "i", 31310 },	-- Wildhammer Flare Gun (Provided)
							},
							["coord"] = { 52.4, 68.4, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10768, {	-- Tabards of the Illidari (H)
							["description"] = "Use your Kor'kron Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
							["sourceQuest"] = 10765,	-- When Worlds Collide
							["providers"] = {
								{ "n", 21998 },	-- Kor'kron Wind Rider
								{ "i", 31108 },	-- Kor'kron Flare Gun (Provided)
							},
						}),
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/10 Illidari Tabard
								["provider"] = { "i", 31278 },	-- Illidari Tabard
								["crs"] = {
									22093,	-- Illidari Watcher <The Crimson Sigil>
									22017,	-- Eclipsion Spellbinder
									22016,	-- Eclipsion Soldier
									22018,	-- Eclipsion Cavalier
									21979,	-- Val'zareq the Conqueror <The Crimson Sigil>
								},
							}),
						},
					},
					q(10568, {	-- Tablets of Baa'ri (The Aldor)
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["qg"] = 21402,	-- Anchorite Ceyla
						["coord"] = { 62.6, 28.4, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/12 Baa'ri Tablet Fragment
								["providers"] = {
									{ "i",  30596 },	-- Baa'ri Tablet Fragment
									{ "o", 184869 },	-- Baa'ri Tablet Fragment
									{ "o", 184870 },	-- Baa'ri Tablet Fragment
								},
								["cr"] = 21455,	-- Ashtongue Worker
							}),
						},
					}),
					q(10683, {	-- Tablets of Baa'ri (The Scryers)
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["qg"] = 21955,	-- Arcanist Thelis
						["coord"] = { 56.2, 59.6, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/12 Baa'ri Tablet Fragment
								["providers"] = {
									{ "i",  30596 },	-- Baa'ri Tablet Fragment
									{ "o", 184869 },	-- Baa'ri Tablet Fragment
									{ "o", 184870 },	-- Baa'ri Tablet Fragment
								},
								["cr"] = 21455,	-- Ashtongue Worker
							}),
						},
					}),
					{	-- Teron Gorefiend, I am...
						["allianceQuestData"] = q(10645),	-- Teron Gorefiend, I am... (A)
						["hordeQuestData"] = q(10639),	-- Teron Gorefiend, I am... (H)
						["qg"] = 21797,	-- Ancient Shadowmoon Spirit
						["sourceQuests"] = {
							10634,	-- Divination: Gorefiend's Armor
							10635,	-- Divination: Gorefiend's Cloak
							10636,	-- Divination: Gorefiend's Truncheon
						},
						["coord"] = { 58.2, 70.7, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Karsius the Ancient Watcher slain
								["provider"] = { "n", 21877 },	-- Karsius the Ancient Watcher
							}),
							i(31104),	-- Evoker's Helmet of Second Sight
							i(31110),	-- Druidic Helmet of Second Sight
							i(31109),	-- Stealther's Helmet of Second Sight
							i(31107),	-- Shamanistic Helmet of Second Sight
							i(31106),	-- Stalker's Helmet of Second Sight
							i(31105),	-- Overlord's Helmet of Second Sight
						},
					},
					{	-- Teron Gorefiend - Lore and Legend
						["allianceQuestData"] = q(10644, {	-- Teron Gorefiend - Lore and Legend (A)
							["sourceQuest"] = 10643,	-- Harbingers of Shadowmoon
							["qg"] = 21774,	-- Zorus the Judicator
							["coord"] = { 37, 56.4, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10633, {	-- Teron Gorefiend - Lore and Legend (H)
							["sourceQuest"] = 10625,	-- Spectrecles
							["qg"] = 21772,	-- Chief Apothecary Hildagard
							["coord"] = { 29.9, 27.6, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							i(30721),	-- Spectrecles
						},
					},
					q(11047, {	-- The Apprentice's Request
						["qg"] = 23280,	-- Agadai
						["coord"] = { 52.0, 54.4, BLADES_EDGE_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 20),
					}),
					q(10606, {	-- The Art of Fel Reaver Maintenance (A)
						["sourceQuest"] = 10766,	-- Invasion Point: Cataclysm (A)
						["qg"] = 21790,	-- Plexi
						["coord"] = { 40.8, 22.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 The Art of Fel Reaver Maintenance
								["providers"] = {
									{ "i",  30713 },	-- The Art of Fel Reaver Maintenance
									{ "o", 184947 },	-- The Doctor's Strongbox
									{ "i",  30712 },	-- The Doctor's Key
								},
								["coord"] = { 39.4, 19.5, SHADOWMOON_VALLEY },
								["cr"] = 21778,	-- Doctor Gutrick <Shadow Council Overseer>
							}),
						},
					}),
					q(10611, {	-- The Art of Fel Reaver Maintenance (H)
						["sourceQuest"] = 10767,	-- Invasion Point: Cataclysm (H)
						["qg"] = 21789,	-- Nakansi
						["coord"] = { 27.4, 21.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 The Art of Fel Reaver Maintenance
								["providers"] = {
									{ "i",  30713 },	-- The Art of Fel Reaver Maintenance
									{ "o", 185233 },	-- The Doctor's Strongbox
									{ "i",  30712 },	-- The Doctor's Key
								},
								["coord"] = { 29, 20.5, SHADOWMOON_VALLEY },
								["cr"] = 21779,	-- Doctor Maleficus <Shadow Council Overseer>
							}),
						},
					}),
					q(10807, {	-- The Ashtongue Broken
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["qg"] = 21953,	-- Varen the Reclaimer
						["coord"] = { 54.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/3 Ashtongue Handler slain
								["provider"] = { "n", 21803 },	-- Ashtongue Handler
							}),
							objective(2, {	-- 0/4 Ashtongue Warrior slain
								["provider"] = { "n", 21454 },	-- Ashtongue Warrior
							}),
							objective(3, {	-- 0/6 Ashtongue Shaman slain
								["provider"] = { "n", 21453 },	-- Ashtongue Shaman
							}),
						},
					}),
					q(10574, {	-- The Ashtongue Corruptors (The Aldor)
						["sourceQuest"] = 10571,	-- Oronu the Elder
						["qg"] = 21402,	-- Anchorite Ceyla
						["coord"] = { 62.6, 28.4, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Eykenen's Medallion Fragment
								["provider"] = { "i", 30692 },	-- Eykenen's Medallion Fragment
								["coord"] = { 51, 52.4, SHADOWMOON_VALLEY },
								["cr"] = 21709,	-- Eykenen
							}),
							objective(2, {	-- 0/1 Haalum's Medallion Fragment
								["provider"] = { "i", 30691 },	-- Haalum's Medallion Fragment
								["coord"] = { 57, 73.4, SHADOWMOON_VALLEY },
								["cr"] = 21711,	-- Haalum
							}),
							objective(3, {	-- 0/1 Lakaan's Medallion Fragment
								["provider"] = { "i", 30693 },	-- Lakaan's Medallion Fragment
								["coord"] = { 49.6, 23.6, SHADOWMOON_VALLEY },
								["cr"] = 21416,	-- Lakaan
							}),
							objective(4, {	-- 0/1 Uylaru's Medallion Fragment
								["provider"] = { "i", 30694 },	-- Uylaru's Medallion Fragment
								["coord"] = { 48.2, 39.4, SHADOWMOON_VALLEY },
								["cr"] = 21710,	-- Uylaru
							}),
						},
					}),
					q(10685, {	-- The Ashtongue Corruptors (The Scryers)
						["sourceQuest"] = 10684,	-- Oronu the Elder
						["qg"] = 21955,	-- Arcanist Thelis
						["coord"] = { 56.2, 59.6, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Eykenen's Medallion Fragment
								["provider"] = { "i", 30692 },	-- Eykenen's Medallion Fragment
								["coord"] = { 51, 52.4, SHADOWMOON_VALLEY },
								["cr"] = 21709,	-- Eykenen
							}),
							objective(2, {	-- 0/1 Haalum's Medallion Fragment
								["provider"] = { "i", 30691 },	-- Haalum's Medallion Fragment
								["coord"] = { 57, 73.4, SHADOWMOON_VALLEY },
								["cr"] = 21711,	-- Haalum
							}),
							objective(3, {	-- 0/1 Lakaan's Medallion Fragment
								["provider"] = { "i", 30693 },	-- Lakaan's Medallion Fragment
								["coord"] = { 49.6, 23.6, SHADOWMOON_VALLEY },
								["cr"] = 21416,	-- Lakaan
							}),
							objective(4, {	-- 0/1 Uylaru's Medallion Fragment
								["provider"] = { "i", 30694 },	-- Uylaru's Medallion Fragment
								["coord"] = { 48.2, 39.4, SHADOWMOON_VALLEY },
								["cr"] = 21710,	-- Uylaru
							}),
						},
					}),
					q(10619, {	-- The Ashtongue Tribe
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["qg"] = 21822,	-- Vindicator Aluumen
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/3 Ashtongue Handler slain
								["provider"] = { "n", 21803 },	-- Ashtongue Handler
							}),
							objective(2, {	-- 0/4 Ashtongue Warrior slain
								["provider"] = { "n", 21454 },	-- Ashtongue Warrior
							}),
							objective(3, {	-- 0/6 Ashtongue Shaman slain
								["provider"] = { "n", 21453 },	-- Ashtongue Shaman
							}),
						},
					}),
					q(10707, {	-- The Ata'mal Terrace
						["sourceQuest"] = 10706,	-- A Mysterious Portent
						["qg"] = 21700,	-- Akama
						["coord"] = { 58.1, 48.1, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Heart of Fury
								["provider"] = { "i", 31307 },	-- Heart of Fury
								["coord"] = { 71.4, 35.4, SHADOWMOON_VALLEY },
								["cr"] = 22006,	-- Shadowlord Deathwail
							}),
						},
					}),
					q(10550, {	-- The Bundle of Bloodthistle
						["sourceQuest"] = 10547,	-- Of Thistleheads and Eggs...
						["providers"] = {
							{ "n", 21411 },	-- Tobias the Filth Gorger
							{ "i", 30501 },	-- Bundle of Bloodthistle
						},
						["coord"] = { 63.8, 69.7, SHATTRATH_CITY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10588, {	-- The Cipher of Damnation
						["sourceQuests"] = { 10523, 10541, 10579 },	-- The Cipher of Damnation, the First/Second/Third Fragment Recovered
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.4, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Cyrukh the Firelord slain
								["providers"] = {
									{ "n", 21181 },	-- Cyrukh the Firelord
									{ "i", 30657 },	-- The Cipher of Damnation
								},
							}),
							i(31073),	-- Borak's Reminder
							i(31071),	-- Grom'tor's Charge
							i(31072),	-- Lohn'goron, Bow of the Torn-Heart
							i(31036),	-- Oronok's Ancient Scepter
							i(31062),	-- Torn-Heart Axe of Battle
							i(31038),	-- Staff of the Redeemer
							i(31074),	-- Amulet of the Torn-Heart
						},
					}),
					q(10540, {	-- The Cipher of Damnation - Ar'tor's Charge
						["sourceQuest"] = 10537,	-- Lohn'goron, Bow of the Torn-heart
						["qg"] = 21318,	-- Spirit of Ar'tor
						["coord"] = { 29.6, 50.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Second Fragment of the Cipher of Damnation
								["provider"] = { "i", 30453 },	-- Second Fragment of the Cipher of Damnation
								["coord"] = { 29.4, 58, SHADOWMOON_VALLEY },
								["cr"] = 20427,	-- Veneratus the Many
							}),
						},
					}),
					q(10578, {	-- The Cipher of Damnation - Borak's Charge
						["sourceQuest"] = 10577,	-- What Illidan Wants, Illidan Gets...
						["qg"] = 21293,	-- Borak, Son of Oronok
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Third Fragment of the Cipher of Damnation
								["provider"] = { "i", 30645 },	-- Third Fragment of the Cipher of Damnation
								["coord"] = { 61.6, 56.8, SHADOWMOON_VALLEY },
								["cr"] = 21315,	-- Ruul the Darkener
							}),
						},
					}),
					q(10522, {	-- The Cipher of Damnation - Grom'tor's Charge
						["sourceQuest"] = 10521,	-- Grom'tor, Son of Oronok
						["qg"] = 21291,	-- Grom'tor, Son of Oronok
						["coord"] = { 44.6, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 First Fragment of the Cipher of Damnation
								["providers"] = {
									{ "i",  30428 },	-- First Fragment of the Cipher of Damnation
									{ "o", 184716 },	-- Coilskar Chest
									{ "i",  30426 },	-- Coilskar Chest Key
								},
								["coord"] = { 47.1, 29.9, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10523, {	-- The Cipher of Damnation - The First Fragment Recovered
						["sourceQuest"] = 10522,	-- The Cipher of Damnation - Grom'tor's Charge
						["providers"] = {
							{ "n", 21291 },	-- Grom'tor, Son of Oronok
							{ "i", 30429 },	-- Grom'tor's Lockbox
						},
						["coord"] = { 44.6, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30945),	-- Grom'tor's Friend's Cousin's Tunic
							i(30923),	-- Grom'tor's Bloodied Bandage
							i(30956),	-- Oronok's Old Bracers
							i(30981),	-- Grom'tor's Pendant of Conquest
						},
					}),
					q(10541, {	-- The Cipher of Damnation - The Second Fragment Recovered
						["sourceQuest"] = 10540,	-- The Cipher of Damnation - Ar'tor's Charge
						["providers"] = {
							{ "n", 21318 },	-- Spirit of Ar'tor
							{ "i", 30454 },	-- Ar'tor's Lockbox
						},
						["coord"] = { 29.6, 50.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30936),	-- Eva's Strap
							i(30931),	-- Ghostly Headwrap
							i(30957),	-- Oronok's Old Leggings
							i(30971),	-- Torn-Heart Cloak
							i(30959),	-- Torn-Heart Family Tunic
						},
					}),
					q(10579, {	-- The Cipher of Damnation - The Third Fragment Recovered
						["sourceQuest"] = 10578,	-- The Cipher of Damnation - Borak's Charge
						["providers"] = {
							{ "n", 21293 },	-- Borak, Son of Oronok
							{ "i", 30646 },	-- Borak's Lockbox
						},
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							i(30951),	-- Ar'tor's Mainstay
							i(30962),	-- Borak's Belt of Bravery
							i(30939),	-- Felboar Hide Shoes
							i(30925),	-- Spaulders of the Torn-Heart
							i(30967),	-- The Hands of Fate
							i(30944),	-- Umberhowl's Collar
						},
					}),
					q(10519, {	-- The Cipher of Damnation - Truth and History
						["sourceQuest"] = 10515,	-- A Lesson Learned
						["qg"] = 21183,	-- Oronok Torn-heart
						["coord"] = { 53.8, 23.6, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10573, {	-- The Deathforge (A)
						["sourceQuest"] = 10564,	-- Blast the Infernals! (A)
						["qg"] = 21357,	-- Wing Commander Nuainn
						["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10599, {	-- The Deathforge (H)
						["sourceQuest"] = 10598,	-- Blast the Infernals! (H)
						["qg"] = 21359,	-- Blood Guard Gulmok
						["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10583, {	-- The Fate of Flanis
						["sourceQuest"] = 10582,	-- Minions of the Shadow Council
						["qg"] = 21471,	-- Stormer Ewan Wildwing
						["coord"] = { 40.4, 41.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Flanis's Pack
								["provider"] = { "i", 30658 },	-- Flanis's Pack
								["coord"] = { 34.6, 39.8, SHADOWMOON_VALLEY },
								["cr"] = 21727,	-- Flanis Swiftwing
							}),
						},
					}),
					q(10601, {	-- The Fate of Kagrosh
						["sourceQuest"] = 10600,	-- Minions of the Shadow Council
						["qg"] = 21475,	-- Scout Zagran
						["coord"] = { 38.5, 38.1, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Kagrosh's Pack
								["provider"] = { "i", 30659 },	-- Kagrosh's Pack
								["coord"] = { 35.2, 40.0, SHADOWMOON_VALLEY },
								["cr"] = 21725,	-- Kagrosh
							}),
						},
					}),
					{	-- The Fel and the Furious
						["allianceQuestData"] = q(10612, {	-- The Fel and the Furious (A)
							["sourceQuest"] = 10606,	-- The Art of Fel Reaver Maintenance (A)
							["qg"] = 21790,	-- Plexi
							["coord"] = { 40.8, 22.2, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10613, {	-- The Fel and the Furious (H)
							["sourceQuest"] = 10611,	-- The Art of Fel Reaver Maintenance (H)
							["qg"] = 21789,	-- Nakansi
							["coord"] = { 27.5, 21.2, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/60 Deathforged Infernal
								["providers"] = {
									{ "o", 184979 },	-- Deathforged Infernal
									{ "o", 185060 },	-- Fel Reaver Control Console
								},
							}),
						},
					},
					q(10854, {	-- The Force of Neltharaku
						["sourceQuest"] = 10837,	-- To Netherwing Ledge!
						["qg"] = 21657,	-- Neltharaku
						["coord"] = { 61.9, 60.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/5 Enslaved Netherwing Drake freed
								["providers"] = {
									{ "n", 21722 },	-- Enslaved Netherwing Drake
									{ "i", 31652 },	-- Enchanted Nethervine Crystal
								},
								["coord"] = { 70.4, 61.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10817, {	-- The Great Retribution
						["sourceQuest"] = 10807,	-- The Ashtongue Broken
						["qg"] = 21953,	-- Varen the Reclaimer
						["coord"] = { 54.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Shadowmoon Slayer slain
								["provider"] = { "n", 22082 },	-- Shadowmoon Slayer
							}),
							objective(2, {	-- 0/8 Shadowmoon Chosen slain
								["provider"] = { "n", 22084 },	-- Shadowmoon Chosen
							}),
							objective(3, {	-- 0/4 Shadowmoon Darkweaver slain
								["provider"] = { "n", 22081 },	-- Shadowmoon Darkweaver
							}),
							i(30940),	-- Aged Leather Bindings
							i(30961),	-- Ash-Covered Helm
							i(30922),	-- Ata'mal Crown
							i(30958),	-- Blackened Chain Greaves
						},
					}),
					q(10680, {	-- The Hand of Gul'dan (A)
						["qg"] = 21937,	-- Earthmender Sophurus
						["coord"] = { 36.3, 56.9, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,	-- for Enraged Spirits of Fire and Earth
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10681, {	-- The Hand of Gul'dan (H)
						["qg"] = 21938,	-- Earthmender Splinthoof
						["coord"] = { 28.4, 26.5, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,	-- for Enraged Spirits of Fire and Earth
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10662, {	-- The Hermit Smith (A)
						["sourceQuest"] = 10626,	-- Capture the Weapons (A)
						["providers"] = {
							{ "n", 19370 },	-- Ordinn Thunderfist
							{ "i", 30822 },	-- Box of Ingots (Provided)
						},
						["coord"] = { 36.8, 54.8, SHADOWMOON_VALLEY },
						["maps"] = { TEROKKAR_FOREST },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10663, {	-- The Hermit Smith (H)
						["sourceQuest"] = 10627,	-- Capture the Weapons (H)
						["providers"] = {
							{ "n", 19333 },	-- Grokom Deatheye
							{ "i", 30822 },	-- Box of Ingots (Provided)
						},
						["coord"] = { 29.8, 31.2, SHADOWMOON_VALLEY },
						["maps"] = { TEROKKAR_FOREST },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					q(10793, {	-- The Journal of Val'zareq: Portends of War
						["provider"] = { "i", 31345 },	-- The Journal of Val'zareq
						["coord"] = { 51.6, 61.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10678, {	-- The Main Course!
						["sourceQuest"] = 10677,	-- The Second Course...
						["qg"] = 21777,	-- Gnomus
						["coord"] = { 36.5, 55.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Felspine's Hide
								["provider"] = { "i", 30851 },	-- Felspine's Hide
								["coord"] = { 55.6, 43.4, SHADOWMOON_VALLEY },
								["cr"] = 21897,	-- Felspine the Greater
							}),
						},
					}),
					q(10772, {	-- The Path of Conquest (A)
						["qg"] = 21773,	-- Thane Yoregar
						["coord"] = { 36.2, 57.0, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- The Path of Conquest Discovered
								["provider"] = { "i", 31310 },	-- Wildhammer Flare Gun (Provided)
								["coord"] = { 51, 62, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10750, {	-- The Path of Conquest (H)
						["qg"] = 21769,	-- Overlord Or'barokh
						["coord"] = { 28.4, 26.4, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- The Path of Conquest Discovered
								["provider"] = { "i", 31108 },	-- Kor'kron Flare Gun (Provided)
								["coord"] = { 51, 62, SHADOWMOON_VALLEY },
							}),
						},
					}),
					q(10778, {	-- The Rod of Lianthe
						["sourceQuest"] = 10777,	-- Asghar's Totem
						["qg"] = 22024,	-- Parshah
						["coords"] = {
							{ 35.4, 37.6, SHADOWMOON_VALLEY },
							{ 35.2, 40.4, SHADOWMOON_VALLEY },
							{ 35.4, 41.8, SHADOWMOON_VALLEY },
						},
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Lianthe's Key
								["provider"] = { "i", 31316 },	-- Lianthe's Key
								["crs"] = {
									19806,	-- Eclipsion Bloodwarder
									19792,	-- Eclipsion Centurion
									19796,	-- Eclipsion Archmage
								},
							}),
							objective(2, {	-- 0/1 Rod of Lianthe
								["provider"] = { "i", 31317 },	-- Rod of Lianthe
							}),
						},
					}),
					q(10677, {	-- The Second Course...
						["sourceQuest"] = 10661,	-- Spleendid!
						["qg"] = 21777,	-- Gnomus
						["coord"] = { 36.5, 55.2, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Overdeveloped Felfire Gizzard
								["provider"] = { "i", 30867 },	-- Overdeveloped Felfire Gizzard
								["coord"] = { 58, 51.8, SHADOWMOON_VALLEY },
								["cr"] = 21462,	-- Greater Felfire Diemetradon
							}),
						},
					}),
					q(10576, {	-- The Shadowmoon Shuffle
						["sourceQuest"] = 10570,	-- To Catch a Thistlehead
						["qg"] = 21293,	-- Borak, Son of Oronok
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/6 Eclipsion Armor
								["provider"] = { "i", 30640 },	-- Eclipsion Armor
								["crs"] = {
									19792,	-- Eclipsion Centurion
									19793,	-- Eclipsion Pyromancer
									19794,	-- Eclipsion Magister
									19795,	-- Eclipsion Blood Knight
									19796,	-- Eclipsion Archmage
									19797,	-- Illidari Highlord
									19805,	-- Eclipsion Jailor
									19806,	-- Eclipsion Bloodwarder
								},
							}),
						},
					}),
					{	-- The Sketh'lon Wreckage
						["allianceQuestData"] = q(10569, {	-- The Sketh'lon Wreckage (A)
							["qg"] = 22042,	-- Gryphonrider Kieran
							["coord"] = { 38.8, 54.2, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10760, {	-- The Sketh'lon Wreckage (H)
							["qg"] = 22043,	-- Sergeant Kargrul
							["coord"] = { 31.0, 29.7, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Sketh'lon Commander's Journal - Page 1
								["provider"] = { "i", 31260 },	-- Sketh'lon Commander's Journal - Page 1
								["crs"] = {
									21386,	-- Dark Conclave Hawkeye
									19827,	-- Dark Conclave Ravenguard
									19826,	-- Dark Conclave Shadowmancer
								},
							}),
							objective(2, {	-- 0/1 Sketh'lon Commander's Journal - Page 2
								["provider"] = { "i", 31261 },	-- Sketh'lon Commander's Journal - Page 2
								["crs"] = {
									21386,	-- Dark Conclave Hawkeye
									19827,	-- Dark Conclave Ravenguard
									19826,	-- Dark Conclave Shadowmancer
								},
							}),
							objective(3, {	-- 0/1 Sketh'lon Commander's Journal - Page 3
								["provider"] = { "i", 31262 },	-- Sketh'lon Commander's Journal - Page 3
								["crs"] = {
									21386,	-- Dark Conclave Hawkeye
									19827,	-- Dark Conclave Ravenguard
									19826,	-- Dark Conclave Shadowmancer
								},
							}),
						},
					},
					{	-- The Summoning Chamber
						["allianceQuestData"] = q(10585, {	-- The Summoning Chamber (A)
							["sourceQuest"] = 10582,	-- Minions of the Shadow Council (A)
							["qg"] = 21471,	-- Stormer Ewan Wildwing
							["coord"] = { 40.4, 41.2, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10602, {	-- The Summoning Chamber (H)
							["sourceQuest"] = 10600,	-- Minions of the Shadow Council (H)
							["qg"] = 21475,	-- Scout Zagran
							["coord"] = { 38.5, 38.1, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 End Infernal Summoning Ritual
								["provider"] = { "n", 21735 },	-- Infernal Oversoul
							}),
							objective(2, {	-- 0/1 Elemental Displacer
								["provider"] = { "i", 30672 },	-- Elemental Displacer
								["crs"] = {
									19754,	-- Deathforge Tinkerer
									19756,	-- Deathforge Smith
								},
							}),
						},
					},
					q(10575, {	-- The Warden's Cage (The Aldor)
						["sourceQuest"] = 10574,	-- The Ashtongue Corruptors
						["qg"] = 21402,	-- Anchorite Ceyla
						["coord"] = { 62.6, 28.4, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10686, {	-- The Warden's Cage (The Scryers)
						["sourceQuest"] = 10685,	-- The Ashtongue Corruptors
						["qg"] = 21955,	-- Arcanist Thelis
						["coord"] = { 56.2, 59.6, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
					}),
					q(10808, {	-- Thwart the Dark Conclave
						["sourceQuest"] = 10782,	-- Imbuing the Headpiece
						["qg"] = 22024,	-- Parshah
						["coords"] = {	-- questgiver pats up and down the road
							{ 35.4, 37.6, SHADOWMOON_VALLEY },
							{ 35.2, 40.4, SHADOWMOON_VALLEY },
							{ 35.4, 41.8, SHADOWMOON_VALLEY },
						},
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- End Dark Conclave Summoning Ritual
								["provider"] = { "i", 31386 },	-- Staff of Parshah
								["coord"] = { 41.6, 60.2, SHADOWMOON_VALLEY },
								["cr"] = 22138,	-- Dark Conclave Ritualist
							}),
							i(30941),	-- Ash Tempered Legguards
							i(30955),	-- Crown of Cinders
							i(30960),	-- Runed Sketh'lon Legplates
							i(30928),	-- Sketh'lon Survivor's Tunic
						},
					}),
					q(10570, {	-- To Catch A Thistlehead
						["sourceQuest"] = 10550,	-- The Bundle of Bloodthistle
						["qg"] = 21293,	-- Borak, Son of Oronok
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Stormrage Missive
								["providers"] = {
									{ "i", 30617 },	-- Stormrage Missive
									{ "i", 30616 },	-- Bundle of Bloodthistle
								},
								["cr"] = 21409,	-- Envoy Icarius
							}),
						},
					}),
					{	-- To Legion Hold
						["allianceQuestData"] = q(10563, {	-- To Legion Hold (A)
							["sourceQuest"] = 10562,	-- Besieged! (A)
							["qg"] = 21357,	-- Wing Commander Nuainn
							["coord"] = { 39.5, 53.7, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10596, {	-- To Legion Hold (H)
							["sourceQuest"] = 10595,	-- Besieged! (H)
							["qg"] = 21359,	-- Blood Guard Gulmok
							["coord"] = { 30.4, 32.4, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- Discover Legion's Plans
								["provider"] = { "i", 30638 },	-- Box o' Tricks (Provided)
								["coord"] = { 23.6, 36.8, SHADOWMOON_VALLEY },
								["cr"] = 21502,	-- Image of Warbringer Razuun
							}),
						},
					},
					q(10837, {	-- To Netherwing Ledge!
						["sourceQuest"] = 10836,	-- Infiltrating Dragonmaw Fortress
						["qg"] = 21657,	-- Neltharaku
						["coord"] = { 61.9, 60.0, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["groups"] = {
							objective(1, {	-- 0/12 Nethervine Crystal
								["providers"] = {
									{ "i",  31504 },	-- Nethervine Crystal
									{ "o", 185182 },	-- Nethervine Crystal
								},
							}),
						},
					}),
					q(10651, {	-- Varedis Must Be Stopped (The Aldor)
						["sourceQuest"] = 10650,	-- Return to the Aldor
						["qg"] = 21860,	-- Exarch Onaala
						["coord"] = { 61.2, 29.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Varedis slain
								["providers"] = {
									{ "n", 21178 },	-- Varedis
									{ "i", 30854 },	-- Book of Fel Names
								},
								["coord"] = { 72.0, 53.6, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Netharel slain
								["provider"] = { "n", 21164 },	-- Netharel
								["coord"] = { 69.0, 52.6, SHADOWMOON_VALLEY },
							}),
							objective(3, {	-- 0/1 Theras slain
								["provider"] = { "n", 21168 },	-- Theras
								["coord"] = { 72.2, 48.6, SHADOWMOON_VALLEY },
							}),
							objective(4, {	-- 0/1 Alandien slain
								["provider"] = { "n", 21171 },	-- Alandien
								["coord"] = { 69.6, 53.8, SHADOWMOON_VALLEY },
							}),
							i(31013),	-- Ceremonial Kris
							i(30933),	-- Hauberk of Karabor
							i(31010),	-- Slayer's Axe
							i(31002),	-- Summoner's Blade
							i(30948),	-- Sunfury Legguards
							i(31009),	-- Wildcaller
						},
					}),
					q(10692, {	-- Varedis Must Be Stopped (The Scryers)
						["sourceQuest"] = 10691,	-- Return to the Scryers
						["qg"] = 21954,	-- Larissa Sunstrike
						["coord"] = { 55.7, 58.1, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Varedis slain
								["providers"] = {
									{ "n", 21178 },	-- Varedis
									{ "i", 30854 },	-- Book of Fel Names
								},
								["coord"] = { 72.0, 53.6, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Netharel slain
								["provider"] = { "n", 21164 },	-- Netharel
								["coord"] = { 69.0, 52.6, SHADOWMOON_VALLEY },
							}),
							objective(3, {	-- 0/1 Theras slain
								["provider"] = { "n", 21168 },	-- Theras
								["coord"] = { 72.2, 48.6, SHADOWMOON_VALLEY },
							}),
							objective(4, {	-- 0/1 Alandien slain
								["provider"] = { "n", 21171 },	-- Alandien
								["coord"] = { 69.6, 53.8, SHADOWMOON_VALLEY },
							}),
							i(31013),	-- Ceremonial Kris
							i(30933),	-- Hauberk of Karabor
							i(31010),	-- Slayer's Axe
							i(31002),	-- Summoner's Blade
							i(30948),	-- Sunfury Legguards
							i(31009),	-- Wildcaller
						},
					}),
					q(11044, {	-- Visions of Destruction
						["qg"] = 23268,	-- Seer Jovar
						["coord"] = { 55.4, 68.6, NAGRAND },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 25),
					}),
					{	-- Wanted: Uvuros, Scourge of Shadowmoon
						["allianceQuestData"] = q(10648, {	-- Wanted: Uvuros, Scourge of Shadowmoon (A)
							["provider"] = { "o", 184946 },	-- Wanted Poster
							["coord"] = { 38.2, 53.9, SHADOWMOON_VALLEY },
						}),
						["hordeQuestData"] = q(10647, {	-- Wanted: Uvuros, Scourge of Shadowmoon (H)
							["provider"] = { "o", 184945 },	-- Wanted Poster
							["coord"] = { 30.4, 30.8, SHADOWMOON_VALLEY },
						}),
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Uvuros's Fiery Mane
								["provider"] = { "i", 30807 },	-- Uvuros's Fiery Mane
								["coord"] = { 55.8, 48.6, SHADOWMOON_VALLEY },
								["cr"] = 21102,	-- Uvuros
							}),
							i(31112),	-- Uvuros Hide Boots
							i(31114),	-- Uvuros Hide Cinch
							i(31111),	-- Uvuros Hide Gloves
							i(31115),	-- Uvuros Plated Spaulders
						},
					},
					warchiefscommand(q(49532, {	-- Warchief's Command: Shadowmoon Valley!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = lvlsquish(67, 67, 25),
					})),
					q(10577, {	-- What Illidan Wants, Illidan Gets...
						["sourceQuest"] = 10576,	-- The Shadowmoon Shuffle
						["qg"] = 21293,	-- Borak, Son of Oronok
						["coord"] = { 47.6, 57.2, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(68, 68, 25),
						["groups"] = {
							objective(1, {	-- Illidan's Message Delivered
								["provider"] = { "i", 30639 },	-- Blood Elf Disguise
								["coord"] = { 46.4, 71.8, SHADOWMOON_VALLEY },
								["cr"] = 20563,	-- Grand Commander Ruusk
							}),
						},
					}),
					q(10660, {	-- What Strange Creatures...
						["qg"] = 21770,	-- Researcher Tiorus
						["coord"] = { 30.0, 28.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/8 Felfire Spleen
								["provider"] = { "i", 30819 },	-- Felfire Spleen
								["crs"] = {
									21408,	-- Felfire Diemetradon
									21900,	-- Frightwing
								},
							}),
						},
					}),
					q(10765, {	-- When Worlds Collide...
						["description"] = "Use your Kor'kron Flare Gun to summon the questgiver anywhere on the Path of Conquest.",
						["sourceQuest"] = 10751,	-- Breaching the Path (H)
						["providers"] = {
							{ "n", 21998 },	-- Kor'kron Wind Rider
							{ "i", 31108 },	-- Kor'kron Flare Gun (Provided)
						},
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(67, 67, 25),
						["groups"] = {
							objective(1, {	-- 0/1 Chancellor Bloodleaf slain
								["provider"] = { "n", 22012 },	-- Chancellor Bloodleaf
								["coord"] = { 53, 70.6, SHADOWMOON_VALLEY },
							}),
							objective(2, {	-- 0/1 Corok the Mighty slain
								["provider"] = { "n", 22011 },	-- Corok the Mighty
								["coord"] = { 53.6, 69.8, SHADOWMOON_VALLEY },
							}),
							objective(3, {	-- 0/1 Illidan's Command
								["provider"] = { "i", 31271 },	-- Illidan's Command
								["coord"] = { 53, 70.6, SHADOWMOON_VALLEY },
								["cr"] = 22012,	-- Chancellor Bloodleaf
							}),
						},
					}),
					q(11045, {	-- Zorus the Judicator
						["qg"] = 19678,	-- Fantei
						["coord"] = { 64.6, 70.6, SHATTRATH_CITY },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,	-- for "A Ghost in the Machine" in SMV, mutually exclusive w/other bcrumbs
					}),
					q(10866, {	-- Zuluhed the Whacked
						["sourceQuest"] = 10858,	-- Karynaku
						-- #if AFTER WRATH
						["altQuests"] = { 10872 },	-- Zuluhed the Whacked
						-- #endif
						["qg"] = 22112,	-- Karynaku
						["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["_drop"] = { "races" },	-- stop this from being marked as horde only when it is not horde only
						["groups"] = {
							objective(1, {	-- Karynaku freed
								["providers"] = {
									{ "n", 22112 },	-- Karynaku <Mate of Neltharaku>
									{ "i", 31664 },	-- Zuluhed's Key
								},
								["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
								["cr"] = 11980,	-- Zuluhed the Whacked <Chieftain of the Dragonmaw Clan>
							}),
							objective(2, {	-- Zuluhed the Whacked slain
								["provider"] = { "n", 11980 },	-- Zuluhed the Whacked <Chieftain of the Dragonmaw Clan>
								["coord"] = { 71.0, 62.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					-- #if AFTER WRATH
					q(10872, {	-- Zuluhed the Whacked
						["sourceQuest"] = 10858,	-- Karynaku
						["altQuests"] = { 10866 },	-- Zuluhed the Whacked
						["qg"] = 22112,	-- Karynaku
						["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
						["lvl"] = lvlsquish(70, 70, 25),
						["_drop"] = { "races" },	-- stop this from being marked as horde only when it is not horde only
						["groups"] = {
							objective(1, {	-- Karynaku freed
								["providers"] = {
									{ "n", 22112 },	-- Karynaku <Mate of Neltharaku>
									{ "i", 31664 },	-- Zuluhed's Key
								},
								["coord"] = { 69.8, 61.4, SHADOWMOON_VALLEY },
								["cr"] = 11980,	-- Zuluhed the Whacked <Chieftain of the Dragonmaw Clan>
							}),
							objective(2, {	-- Zuluhed the Whacked slain
								["provider"] = { "n", 11980 },	-- Zuluhed the Whacked <Chieftain of the Dragonmaw Clan>
								["coord"] = { 71.0, 62.6, SHADOWMOON_VALLEY },
							}),
						},
					}),
					-- #endif
				}),
				n(RARES, {
					n(18695, {	-- Ambassador Jerrikar
						["coords"] = {
							{ 30.6, 58.2, SHADOWMOON_VALLEY },
							{ 29.0, 55.0, SHADOWMOON_VALLEY },
							{ 29.8, 51.8, SHADOWMOON_VALLEY },
							{ 28.0, 48.4, SHADOWMOON_VALLEY },
							{ 46.4, 69.4, SHADOWMOON_VALLEY },
							{ 47.8, 67.2, SHADOWMOON_VALLEY },
							{ 46.4, 66.0, SHADOWMOON_VALLEY },
							{ 71.0, 62.2, SHADOWMOON_VALLEY },
							{ 68.4, 62.0, SHADOWMOON_VALLEY },
							{ 68.8, 59.8, SHADOWMOON_VALLEY },
							{ 55.8, 38.0, SHADOWMOON_VALLEY },
							{ 57.4, 38.4, SHADOWMOON_VALLEY },
							{ 58.6, 36.6, SHADOWMOON_VALLEY },
							{ 56.2, 35.6, SHADOWMOON_VALLEY },
							{ 57.4, 35.0, SHADOWMOON_VALLEY },
							{ 45.6, 31.2, SHADOWMOON_VALLEY },
							{ 46.2, 28.8, SHADOWMOON_VALLEY },
							{ 46.8, 26.6, SHADOWMOON_VALLEY },
						},
						["groups"] = {
							i(31224),	-- Illidari Bracers
							i(31223),	-- Illidari Wristguards
							i(31225),	-- Illidari Bindings
							i(31221),	-- Illidari Vambraces
						},
					}),
					n(18694, {	-- Collidus the Warp-Watcher
						["coords"] = {
							{ 37.0, 44.2, SHADOWMOON_VALLEY },
							{ 40.2, 43.0, SHADOWMOON_VALLEY },
							{ 67.2, 23.2, SHADOWMOON_VALLEY },
							{ 66.6, 26.2, SHADOWMOON_VALLEY },
							{ 70.6, 28.8, SHADOWMOON_VALLEY },
							{ 73.6, 29.0, SHADOWMOON_VALLEY },
							{ 55.0, 71.2, SHADOWMOON_VALLEY },
							{ 59.2, 70.6, SHADOWMOON_VALLEY },
						},
						["groups"] = {
							i(31219),	-- Emerald Beholder Eye
							i(31220),	-- Amethyst Beholder Eye
							i(31217),	-- Crimson Beholder Eye
							i(31218),	-- Fiery Beholder Eye
						},
					}),
					n(18696, {	-- Kraator
						["coords"] = {
							{ 45.8, 12.2, SHADOWMOON_VALLEY },
							{ 31.0, 45.8, SHADOWMOON_VALLEY },
							{ 42.0, 40.4, SHADOWMOON_VALLEY },
							{ 59.6, 46.6, SHADOWMOON_VALLEY },
							{ 42.4, 68.4, SHADOWMOON_VALLEY },
						},
						["groups"] = {
							i(31213),	-- Abyssal Plate Sabatons
							i(31214),	-- Abyssal Mail Greaves
							i(31216),	-- Abyssal Cloth Footwraps
							i(31215),	-- Abyssal Leather Treads
						},
					}),
				}),
				n(VENDORS, {
					n(19521, {	-- Arrond <Tailoring Supplies>
						["coord"] = { 55.8, 58.2, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(21900, {	-- Pattern: Imbued Netherweave Robe (RECIPE!)
								["isLimited"] = true,
							}),
							i(21901, {	-- Pattern: Imbued Netherweave Tunic (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(20510, {	-- Brunn Flamebeard <Gryphon Keeper>
						["coord"] = { 37.6, 56.0, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(25471),	-- Ebon Gryphon (MOUNT!)
							i(25470),	-- Golden Gryphon (MOUNT!)
							i(25472),	-- Snowy Gryphon (MOUNT!)
							i(25473),	-- Swift Blue Gryphon (MOUNT!)
							i(25528),	-- Swift Green Gryphon (MOUNT!)
							i(25529),	-- Swift Purple Gryphon (MOUNT!)
							i(25527),	-- Swift Red Gryphon (MOUNT!)
						},
					}),
					n(19351, {	-- Daggle Ironshaper
						["coord"] = { 36.8, 54.4, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","itemID",
							30758,	-- Aldor Guardian Rifle
						}},
						["groups"] = {
							i(23807, {	-- Schematic: Adamantite Scope (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(20494, {	-- Dama Wildmane <Wind Rider Keeper>
						["coord"] = { 29.0, 29.4, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25475),	-- Blue Wind Rider (MOUNT!)
							i(25476),	-- Green Wind Rider (MOUNT!)
							i(25474),	-- Tawny Wind Rider (MOUNT!)
							i(25531),	-- Swift Green Wind Rider (MOUNT!)
							i(25533),	-- Swift Purple Wind Rider (MOUNT!)
							i(25477),	-- Swift Red Wind Rider (MOUNT!)
							i(25532),	-- Swift Yellow Wind Rider (MOUNT!)
						},
					}),
					n(19526, {	-- Dunaman <Weapons Vendor>
						["coord"] = { 63.2, 30.6, SHADOWMOON_VALLEY },
						["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
						["sym"] = {{"select","itemID",
							30754,	-- Ancient Bone Mace
							30749,	-- Draenic Sparring Blade
							30750,	-- Draenic Warblade
							30752,	-- Mag'hari Battleaxe
							30751,	-- Mag'hari Light Axe
						}},
						["groups"] = {
							i(30755, {	-- Mag'hari Fighting Claw
								["isLimited"] = true,
							}),
							i(30753, {	-- Warphorn Spear
								["isLimited"] = true,
							}),
						},
					}),
					n(19333, {	-- Grokom Deatheye <Weaponsmith>
						["coord"] = { 29.8, 31.2, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["sym"] = {{"select","itemID",
							30754,	-- Ancient Bone Mace
							30749,	-- Draenic Sparring Blade
							30750,	-- Draenic Warblade
							30752,	-- Mag'hari Battleaxe
							30751,	-- Mag'hari Light Axe
						}},
						["groups"] = {
							i(30755, {	-- Mag'hari Fighting Claw
								["isLimited"] = true,
							}),
							i(30753, {	-- Warphorn Spear
								["isLimited"] = true,
							}),
						},
					}),
					n(19339, {	-- Korthul
						["coord"] = { 30.0, 31.0, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
						["sym"] = {{"select","itemID",
							30758,	-- Aldor Guardian Rifle
							30757,	-- Draenic Light Crossbow
							30759,	-- Mag'hari Light Recurve
						}},
					}),
					n(19342, {	-- Krek Cragcrush <Blacksmithing Supplies>
						["coord"] = { 29.2, 31.0, SHADOWMOON_VALLEY },
						["races"] = HORDE_ONLY,
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
					n(19373, {	-- Mari Stonehand <Armorsmith>
						["coord"] = { 36.8, 55.0, SHADOWMOON_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(25847, {	-- Plans: Eternium Rod (RECIPE!)
								["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
							}),
							i(23638, {	-- Plans: Lesser Ward of Shielding (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(30426, {	-- Coilskar Chest Key
						["crs"] = {
							19762,	-- Coilskar Defender
							19788,	-- Coilskar Muckwatcher
							19765,	-- Coilskar Myrmidon
							19768,	-- Coilskar Siren
							19767,	-- Coilskar Sorceress
							19789,	-- Coilskar Waterkeeper
							20795,	-- Keeper of the Cistern
							20684,	-- Lady Shav'rar
						},
					}),
					i(34689, {	-- Design: Chaotic Skyfire Diamond
						["crs"] = { 19768 },	-- Coilskar Siren
					}),
					i(24158, {  -- Design: Khorium Band of Shadows
						["crs"] = { 19826 },	-- Dark Conclave Shadowmancer
					}),
					i(28276, {	-- Formula: Enchant Cloak - Greater Arcane Resistance (RECIPE!)
						["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
						["cr"] = 19796,	-- Eclipsion Archmage
					}),
					i(30756, {	-- Illidari Bane-Shard (A)
						["coord"] = { 23.0, 35.6, SHADOWMOON_VALLEY },
						["cr"] = 21499,	-- Overseer Ripsaw
						["races"] = ALLIANCE_ONLY,
					}),
					i(30579, {	-- Illidari Bane-Shard (H)
						["coord"] = { 23.0, 35.6, SHADOWMOON_VALLEY },
						["cr"] = 21499,	-- Overseer Ripsaw
						["races"] = HORDE_ONLY,
					}),
					i(23609, {	-- Plans: Khorium Pants (RECIPE!)
						["crs"] = { 20878 },	-- Deathforge Guardian
					}),
					i(23613, {	-- Plans: Ragesteel Breastplate (RECIPE!)
						["crs"] = {
							21454,	-- Ashtongue Warrior
							23324,	-- Crazed Murkblood Miner
						},
					}),
					i(33174, {	-- Plans: Ragesteel Shoulders (RECIPE!)
						["crs"] = {
							21060,	-- Enraged Air Spirit
							21050,	-- Enraged Earth Spirit
							21061,	-- Enraged Fire Spirit
							21059,	-- Enraged Water Spirit
						},
						["timeline"] = { ADDED_2_2_0 },
					}),
					i(31239, {	-- Primed Key Mold
						["coord"] = { 67.6, 36.2, SHADOWMOON_VALLEY },
						["timeline"] = { REMOVED_4_0_3 },
						["cr"] = 22037,	-- Smith Gorlunk
						["races"] = ALLIANCE_ONLY,
						["lvl"] = lvlsquish(68, 68, 10),
					}),
					i(31241, {	-- Primed Key Mold
						["coord"] = { 67.6, 36.2, SHADOWMOON_VALLEY },
						["timeline"] = { REMOVED_4_0_3 },
						["cr"] = 22037,	-- Smith Gorlunk
						["races"] = HORDE_ONLY,
						["lvl"] = lvlsquish(68, 68, 10),
					}),
					i(31682, {	-- Recipe: Fel Mana Potion (RECIPE!)
						["crs"] = {
							19796,	-- Eclipsion Archmage
							19795,	-- Eclipsion Blood Knight
							19806,	-- Eclipsion Bloodwarder
							22018,	-- Eclipsion Cavalier
							19792,	-- Eclipsion Centurion
							22016,	-- Eclipsion Soldier
							22017,	-- Eclipsion Spellbinder
						},
					}),
					i(31681, {	-- Recipe: Fel Regeneration Potion (RECIPE!)
						["crs"] = {
							20878,	-- Deathforge Guardian
							20887,	-- Deathforge Imp
							19756,	-- Deathforge Smith
							19754,	-- Deathforge Tinkerer
						},
					}),
					i(31680, {	-- Recipe: Fel Strength Elixir (RECIPE!)
						["crs"] = {
							19755,	-- Mo'arg Weaponsmith
							21302,	-- Shadow Council Warlock
							21314,	-- Terrormaster
							19740,	-- Wrathwalker
						},
					}),
					i(22924, {	-- Recipe: Major Shadow Protection Potion (RECIPE!)
						["crs"] = { 21302 },	-- Shadow Council Warlock
					}),
					i(23806, {	-- Schematic: Hyper-Vision Goggles (RECIPE!)
						["crs"] = { 19755 },	-- Mo'arg Weaponsmith
					}),
					i(31345, {	-- The Journal of Val'zareq
						["cr"] = 21979,	-- Val'zareq the Conqueror
						["coords"] = {	-- NPC pats
							{ 50.2, 58.6, SHADOWMOON_VALLEY },
							{ 53.2, 60.2, SHADOWMOON_VALLEY },
							{ 52.8, 68.6, SHADOWMOON_VALLEY },
							{ 51.6, 64.0, SHADOWMOON_VALLEY },
						},
					}),
					i(140784, {	-- Fel Piston Stabilizer
						["timeline"] = { ADDED_7_0_3 },
						["crs"] = {
							17711,	-- Doomwalker
							22859,	-- Shadowhoof Summoner
							22858,	-- Shadowhoof Assassin
						},
						["coords"] = {
							{ 69.6, 42.4, SHADOWMOON_VALLEY },
							{ 69.6, 45.4, SHADOWMOON_VALLEY },
							{ 69.6, 44.0, SHADOWMOON_VALLEY },
							{ 66.0, 43.4, SHADOWMOON_VALLEY },
							{ 72.6, 44.0, SHADOWMOON_VALLEY },
						},
					}),
				}),
				n(TREASURES, {
					o(240622, bubbleDownSelf({ ["timeline"] = { ADDED_6_1_0 } }, {	-- Warden's Scroll Case
						["description"] = "Loot the Warden's Scroll Case inside the Warden's Cage (underground).",
						["coord"] = { 57.3, 47.1, SHADOWMOON_VALLEY },
						["modelScale"] = .5,
						["groups"] = {
							i(122228), 	-- Music Roll: The Black Temple
						},
					})),
				})
			},
		})),
	})),
});
