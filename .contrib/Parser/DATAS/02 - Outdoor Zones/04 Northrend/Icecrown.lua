---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(ICECROWN, {
			["lore"] = "Icecrown is a zone intended for level 25+ players to quest in, as well as return to at max level for the Argent Tournament, a daily quest hub that has many vanity rewards. Icecrown, composed literally of solid ice, is home to the Frozen Throne and Icecrown Citadel. The Lich King's presence can be felt across the zone, with the Argent Crusade and Ebon Blade battling all sorts of Scourge horrors. There are also quest chains covering the Scarlet Onslaught's final outpost, as well as the presence of the corrupted Vrykul.",
			["icon"] = 236793,
			["maps"] = { 170 },	-- Hrothgar's Landing
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1270),	-- Explore Icecrown
					ach(40, {	-- Icecrown: The Final Goal
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							13083,	-- Light Within the Darkness
							13219,	-- Battle at Valhalas: Final Challenge
							13235,	-- The Flesh Giant Champion
							13403,	-- Tirion's Gambit (A)
							13364,	-- Tirion's Gambit (H)
							12898,	-- The Shadow Vault (A)
							12899,	-- The Shadow Vault (H)
							13174,	-- Amidst the Confusion
							-- TODO: verify below:
							13172,	-- Seeds of Chaos
							13164,	-- The Fate of Bloodbane
							13157,	-- The Crusaders' Pinnacle
							13346,	-- No Rest For The Wicked (A)
							13367,	-- No Rest For The Wicked (H)
						},
						-- #endif
					}),
					achWithReps(945, { FACTION_ARGENT_DAWN, FACTION_ARGENT_CRUSADE }, {	-- The Argent Champion
						["maps"] = { WESTERN_PLAGUELANDS, EASTERN_PLAGUELANDS },
						["groups"] = {
							title(99),	-- <Name> the Argent Champion
						},
					}),
					achWithRep(947, FACTION_ARGENT_CRUSADE),	-- The Argent Crusade
					achWithRep(1009, FACTION_EBON_BLADE),	-- Knights of the Ebon Blade
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						635,	-- Adder (PET!)
						641,	-- Arctic Hare (PET!)
						633,	-- Mountain Skunk (PET!)
					}},
					["groups"] = {
						pet(393),	-- Cockroach (PET!)
						pet(538),	-- Scourged Whelpling (PET!)
					},
				}),
				explorationHeader({
					exploration(4510),	-- Aldur'thar: The Desolation Gate
					applyclassicphase(WRATH_PHASE_TWO, exploration(4658)),	-- Argent Tournament Grounds
					exploration(4527),	-- Balargarde Fortress
					visit_exploration(4594,{coord={28.3,50.5,ICECROWN}}),	-- Battlescar Spire
					visit_exploration(4588,{coord={35.5,66.3,ICECROWN}}),	-- Blackwatch
					exploration(4521),	-- Cathedral of Darkness
					exploration(4518),	-- Corp'rethar: The Horror Gate
					visit_exploration(4580,{coord={79.6,72.3,ICECROWN}}),	-- Crusaders' Pinnacle
					visit_exploration(4467,{coord={21.1,47.8,ICECROWN}}),	-- Death's Rise
					visit_exploration(4743,{coord={60.7,21.9,ICECROWN}}),	-- Deathspeaker's Watch
					visit_exploration(4622,{coord={64.1,43.2,ICECROWN}}),	-- First Legion Forward Camp
					visit_exploration(4498,{coord={27.6,47.2,ICECROWN}}),	-- Halls of the Ancestors
					exploration(4522),	-- Icecrown Citadel
					visit_exploration(4523,{coord={45.8,51.0,ICECROWN}}),	-- Icecrown Glacier
					exploration(4503),	-- Ironwall Dam
					exploration(4516),	-- Ironwall Rampart
					exploration(4496),	-- Jotunheim
					exploration(4528),	-- Kul'galar Keep
					exploration(4520),	-- Malykriss: The Vile Hold
					exploration(4508),	-- Mord'rethar: The Death Gate
					exploration(4526),	-- Njorndar Village
					exploration(4417),	-- Onslaught Harbor
					visit_exploration(4692,{coord={74.0,30.9,ICECROWN}}),	-- Quel'Delar's Rest
					visit_exploration(4597,{coord={54.4,70.2,ICECROWN}}),	-- Rise of Suffering
					visit_exploration(4530,{coord={34.4,68.4,ICECROWN}}),	-- Sanctum of Reanimation
					visit_exploration(4514,{coord={56.5,57.4,ICECROWN}}),	-- Saronite Mines
					exploration(4497),	-- Savage Ledge
					exploration(4506),	-- Scourgeholme
					visit_exploration(4591,{coord={74.8,39.3,ICECROWN}}),	-- Silent Vigil
					exploration(4533),	-- Sindragosa's Fall
					visit_exploration(4676,{coord={76.2,24.1,ICECROWN}}),	-- Sunreaver Pavilion
					visit_exploration(4672,{coord={75.3,18.3,ICECROWN}}),	-- The Alliance Valiants' Ring
					visit_exploration(4671,{coord={68.9,20.3,ICECROWN}}),	-- The Argent Valiants' Ring
					exploration(4501),	-- The Argent Vanguard
					visit_exploration(4670,{coord={70.9,19.8,ICECROWN}}),	-- The Aspirants' Ring
					visit_exploration(4509,{coord={57.4,42.1,ICECROWN}}),	-- The Bombardment
					exploration(4505),	-- The Breach
					exploration(4507),	-- The Broken Front
					visit_exploration(4515,{coord={47.7,63.2,ICECROWN}}),	-- The Conflagration
					exploration(4519),	-- The Court of Bones
					visit_exploration(4529,{coord={9.7,46.6,ICECROWN}}),	-- The Crimson Cathedral
					exploration(4531),	-- The Fleshwerks
					visit_exploration(4862,{coord={54.2,90.6,ICECROWN}}),	-- The Frozen Halls
					visit_exploration(4673,{coord={75.6,25.7,ICECROWN}}),	-- The Horde Valiants' Ring
					visit_exploration(4593,{coord={76.4,52.6,ICECROWN}}),	-- The Pit of Fiends
					visit_exploration(4669,{coord={72.0,24.0,ICECROWN}}),	-- The Ring of Champions
					exploration(4477),	-- The Shadow Vault
					exploration(4540),	-- The Valley of Fallen Heroes
					visit_exploration(4537,{coord={64.3,49.2,ICECROWN}}),	-- The Valley of Lost Hope
					exploration(4492),	-- Ufrang's Hall
					exploration(4524),	-- Valhalas
					exploration(4504),	-- Valley of Echoes
					exploration(4517),	-- Weeping Quarry
					visit_exploration(4513,{coord={53.0,53.7,ICECROWN}}),	-- Ymirheim
				}),
				n(FACTIONS, {
					faction(FACTION_ARGENT_CRUSADE, {	-- Argent Crusade
						["provider"] = { "i", 43154 },	-- Tabard of the Argent Crusade
						["maps"] = { ZULDRAK },
					}),
					faction(FACTION_EBON_BLADE, {	-- Knights of the Ebon Blade
						["provider"] = { "i", 43155 },	-- Tabard of the Ebon Blade
						["maps"] = { ZULDRAK },
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(335, {	-- Crusaders' Pinnacle
						["cr"] = 31069,	-- Penumbrius <Flight Master>
						["coord"] = { 79.4, 72.2, ICECROWN },
						["sourceQuest"] = 13157,	-- The Crusaders' Pinnacle
					}),
					fp(325, {	-- Death's Rise
						["cr"] = 31078,	-- Dreadwind <Flight Master>
						["coord"] = { 19.4, 47.8, ICECROWN },
					}),
					fp(334, {	-- The Argent Vanguard
						["cr"] = 30433,	-- Aedan Moran <Flight Master>
						["coord"] = { 87.8, 78.0, ICECROWN },
					}),
					fp(333, {	-- The Shadow Vault
						["cr"] = 30314,	-- Morlia Doomwing <Flight Master>
						["coord"] = { 43.6, 24.4, ICECROWN },
					}),
				}),
				petbattles({
					n(66675, {	-- Major Payne <Grand Master Pet Tamer>
						["coord"] = { 77.4, 19.6, ICECROWN },
						["description"] = "Major Payne's pets are level 25 of epic quality and exceptionally powerful of the following consecutive pet classes:\n1. Beast - use Mechanical (powerful) or Flying (tanky) pet.\n2. Mechanical - use Elemental (powerful and tanky) pet.\n3. Elemental - use Aquatic (powerful) or Critter (tanky) pet.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Cogblade Raptor (Batter/Overtune/Exposed Wounds) and Flayer Youngling (Blitz/Focus/Kick).",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31935, {	-- Grand Master Payne
								["sourceAchievement"] = 6605,	-- Taming Northrend
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
					q(31928, {	-- Grand Master Payne
						["qg"] = 66675,	-- Major Payne
						["sourceQuests"] = {
							31927,	-- Battle Pet Tamers: Northrend (A)
							31929,	-- Battle Pet Tamers: Northrend (H)
						},
						["coord"] = { 77.4, 19.6, ICECROWN },
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							objective(1, {	-- Defeat Major Payne
								["provider"] = { "n", 66675 },	-- Major Payne
								["coord"] = { 77.4, 19.6, ICECROWN },
							}),
							i(89125),	-- Sack of Pet Supplies
						},
					}),
					q(31984, {	-- A Brief Reprieve (A)
						["qg"] = 66675,	-- Major Payne
						["sourceQuest"] = 31928,	-- Grand Master Payne
						["coord"] = { 77.4, 19.6, ICECROWN },
						["timeline"] = { ADDED_5_0_4 },
						["maps"] = { STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31983, {	-- A Brief Reprieve (H)
						["qg"] = 66675,	-- Major Payne
						["sourceQuest"] = 31928,	-- Grand Master Payne
						["coord"] = { 77.4, 19.6, ICECROWN },
						["timeline"] = { ADDED_5_0_4 },
						["maps"] = { ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
				}),
				n(QUESTS, {
					q(13286, {	-- ...All the Help We Can Get.
						["qg"] = 30344,	-- High Captain Justin Bartlett
						["sourceQuest"] = 13231,	-- The Broken Front
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13070, {	-- A Cold Front Approaches
						["qg"] = 28179,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13045,	-- Into The Wild Green Yonder
						["coord"] = { 87.4, 75.8, ICECROWN },
					}),
					q(13072, {	-- A Hero Remains
						["qg"] = 30562,	-- Crusader Bridenbrad
						["sourceQuest"] = 13068,	-- A Tale of Valor
						["coord"] = { 79.8, 30.8, ICECROWN },
						["lvl"] = 67,
					}),
					q(13389, {	-- A Short Fuse (A)
						["provider"] = { "o", 193400 },	-- Saronite Bomb Stack
						["sourceQuest"] = 13388,	-- Set It Off!
						["coord"] = { 54.3, 86.3, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13263, {	-- A Short Fuse (H)
						["provider"] = { "o", 193400 },	-- Saronite Bomb Stack
						["sourceQuest"] = 13262,	-- Blow it Up!
						["coord"] = { 54.3, 86.2, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13068, {	-- A Tale of Valor
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13141,	-- The Battle For Crusaders' Pinnacle
						["coord"] = { 79.7, 71.7, ICECROWN },
						["description"] = "For those that didn't know, this quest line was a dedication to a one Brad Bridenbecker, brother to Rob Bridenbecker VP of Online Technologies. Brad had suffered from cancer and was an avid WoW player. His brother requested some memorial be set up for his brother and Chris Metzen, along with others, thought up this quest line to immortalize his battle with cancer within our beloved fantasy realm.\n\nHats off to you, Blizzard, Chris Metzen, and the whole Bridenbecker family. As a childhood cancer survivor myself, you have my utmost respect and loyalty to your honor and vision. You've truly epitomized the struggle of one going through the sickness, the battle, in the most accurate way possible, and bring honor to all of us who have suffered, and have watched those who have suffered, the same battle.\n\nLok'tar, brother Brad. Lok'tar.\n\n—Fellwing on Wowhead",
						["lvl"] = 67,
					}),
					q(13152, {	-- A Visit to the Doctor
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuests"] = {
							13138,	-- I'm Smelting... Smelting!
							13134,	-- Spilling Their Blood
							13140,	-- The Runesmiths of Malykriss
						},
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13390, {	-- A Voice in the Dark (A)
						["provider"] = { "o", 193195 },	-- Pulsing Crystal
						["sourceQuest"] = 13389,	-- A Short Fuse
						["coord"] = { 53.9, 87.2, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13271, {	-- A Voice in the Dark (H)
						["provider"] = { "o", 193195 },	-- Pulsing Crystal
						["sourceQuest"] = 13263,	-- A Short Fuse
						["coord"] = { 53.9, 87.2, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13294, {	-- Against the Giants (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13287,	-- Poke and Prod
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13277, {	-- Against the Giants (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13237,	-- Poke and Prod
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13174, {	-- Amidst the Confusion
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuests"] = {
							13169,	-- An Undead's Best Friend
							13171,	-- From Whence They Came
							13170,	-- Honor is for the Weak
						},
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13374, {	-- Amped for Revolt!
						["qg"] = 32430,	-- Fringe Engineer Tezzla
						["coord"] = { 54.0, 36.9, ICECROWN },
						["timeline"] = { CREATED_3_3_0 },	-- This wasn't seen during Wrath Classic
						["races"] = HORDE_ONLY,
					}),
					q(13169, {	-- An Undead's Best Friend
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuest"] = 13168,	-- Parting Gifts
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13363, {	-- Argent Aid
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13362,	-- Knowledge is a Terrible Burden
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13395, {	-- Army of the Damned (A)
						["qg"] = 32404,	-- Matthias Lehner
						["sourceQuest"] = 13394,	-- Do Your Worst
						["coord"] = { 64.5, 43.9, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13236, {	-- Army of the Damned (H)
						["qg"] = 32404,	-- Matthias Lehner
						["sourceQuest"] = 13305,	-- Do Your Worst
						["coord"] = { 64.5, 43.9, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13309, {	-- Assault by Air (A)
						["qg"] = 31808,	-- Ground Commander Koup
						["sourceQuest"] = 13341,	-- Joining the Assault
						["coord"] = { 62.5, 51.3, ICECROWN },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13310, {	-- Assault by Air (H)
						["qg"] = 31834,	-- Ground Commander Xutjja
						["sourceQuest"] = 13340,	-- Joining the Assault
						["coord"] = { 58.3, 45.9, ICECROWN },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13284, {	-- Assault by Ground (A)
						["qg"] = 31737,	-- Skybreaker Squad Leader
						["sourceQuest"] = 13341,	-- Joining the Assault
						["coord"] = { 62.5, 51.1, ICECROWN },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13301, {	-- Assault by Ground (H)
						["qg"] = 31833,	-- Kor'kron Squad Leader
						["sourceQuest"] = 13340,	-- Joining the Assault
						["coord"] = { 58.3, 46.1, ICECROWN },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13230, {	-- Avenge Me!
						["qg"] = 31273,	-- Dying Berserker
						["sourceQuest"] = 13228,	-- The Broken Front
						["coord"] = { 68.3, 67.5, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13142, {	-- Banshee's Revenge
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13137,	-- Not-So-Honorable Combat
						["coord"] = { 32.4, 42.9, ICECROWN },
						["groups"] = {
							i(44028),	-- Vengance Shiv
							i(44029),	-- Quickblade of Cold Return
							i(44022),	-- The Witching Grimoire
							i(44023),	-- Bonecaster's Endgame
							i(44032),	-- Bulwark of Redemption
						},
					}),
					q(13295, {	-- Basic Chemistry (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13294,	-- Against the Giants
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(44386),	-- Newt-Eye Ring
							i(44387),	-- Bat-Wool Signet
							i(44388),	-- Frog-Toe Band
						},
					}),
					q(13279, {	-- Basic Chemistry (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13277,	-- Against the Giants
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(44386),	-- Newt-Eye Ring
							i(44387),	-- Bat-Wool Signet
							i(44388),	-- Frog-Toe Band
						},
					}),
					q(13213, {	-- Battle at Valhalas
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13142,	-- Banshee's Revenge
						["coord"] = { 32.4, 42.9, ICECROWN },
					}),
					q(13217, {	-- Battle at Valhalas: Carnage!
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13216,	-- Battle at Valhalas: The Return of Sigrid Iceborn
						["coord"] = { 30.7, 28.9, ICECROWN },
					}),
					q(13214, {	-- Battle at Valhalas: Fallen Heroes
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13213,	-- Battle at Valhalas
						["coord"] = { 30.7, 28.9, ICECROWN },
					}),
					q(13219, {	-- Battle at Valhalas: Final Challenge
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13218,	-- Battle at Valhalas: Thane Deathblow
						["coord"] = { 30.7, 28.9, ICECROWN },
						["groups"] = {
							i(44382),	-- Robes of Refrained Celebration
							i(44383),	-- Battleplate of Unheard Ovation
							i(44384),	-- Chestguard of Unwanted Success
							i(44385),	-- Tunic of the Unduly Victorious
						},
					}),
					q(13215, {	-- Battle at Valhalas: Khit'rix the Dark Master
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13214,	-- Battle at Valhalas: Fallen Heroes
						["coord"] = { 30.7, 28.9, ICECROWN },
					}),
					q(13218, {	-- Battle at Valhalas: Thane Deathblow
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13217,	-- Battle at Valhalas: Carnage!
						["coord"] = { 30.7, 28.9, ICECROWN },
					}),
					q(13216, {	-- Battle at Valhalas: The Return of Sigrid Iceborn
						["qg"] = 31135,	-- Geirrvif
						["sourceQuest"] = 13215,	-- Battle at Valhalas: Khit'rix the Dark Master
						["coord"] = { 30.7, 28.9, ICECROWN },
					}),
					q(13335, {	-- Before the Gate of Horror (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13337,	-- The Ironwall Rampart
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13329, {	-- Before the Gate of Horror (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13312,	-- The Ironwall Rampart
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13106, {	-- Blackwatch
						["qg"] = 29343,	-- Baron Sliver
						["sourceQuest"] = 12897,	-- If He Cannot Be Turned
						["coord"] = { 42.8, 24.9, ICECROWN },
						["isBreadcrumb"] = true,
					}),
					q(13313, {	-- Blinding the Eyes in the Sky
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuest"] = 13306,	-- Raise the Barricades
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(12810, {	-- Blood in the Water
						["qg"] = 29344,	-- Lord-Commander Arete
						["sourceQuest"] = 12807,	-- The Story Thus Far...
						["coord"] = { 19.5, 48.1, ICECROWN },
					}),
					q(13336, {	-- Blood of the Chosen (A)
						["qg"] = 32302,	-- Knight-Captain Drosche
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13330, {	-- Blood of the Chosen (H)
						["qg"] = 32301,	-- Warbringer Davos Rioht
						["sourceQuest"] = 13224,	-- Orgrim's Hammer
						["description"] = "On Orgrim's Hammer.",
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13334, {	-- Bloodspattered Banners (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13332,	-- Raise the Barricades
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13307, {	-- Bloodspattered Banners (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13306,	-- Raise the Barricades
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13262, {	-- Blow it Up!
						["qg"] = 31440,	-- Sergeant Kregga
						["sourceQuest"] = 13259,	-- Establishing Superiority
						["coord"] = { 54.9, 84.1, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13291, {	-- Borrowed Technology
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13290,	-- Your Attention, Please
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(38736),	-- Smuggler's Bracers
							i(39035),	-- Glacier-Walker's Mukluks
							i(39065),	-- Skycaptain's Belt
							i(39100),	-- Plated Bracelet of the Skies
						},
					}),
					q(13211, {	-- By Fire Be Purged
						["qg"] = 30708,	-- Crusader Olakin Sainrith
						["sourceQuests"] = {
							13138,	-- I'm Smelting... Smelting!
							13134,	-- Spill Their BLood
							13140,	-- The Runesmiths of Malykriss
						},
						["coord"] = { 35.4, 66.4, ICECROWN },
						["groups"] = {
							i(43880),	-- Fair Touch of the Crusader
							i(43893),	-- Olakin's Enchanted Torch
							i(43900, {	-- Fleshwerk Throwing Glaive
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(13320, {	-- Cannot Reproduce (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13315,	-- Sneak Preview
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13355, {	-- Cannot Reproduce (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13351,	-- Sneak Preview
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13333, {	-- Capture More Dispatches
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13314,	-- Get the Message
						["description"] = "On the Skybreaker.",
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13319, {	-- Chain of Command (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13315,	-- Sneak Preview
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(43882),	-- Cultist's Cowl
							i(43891),	-- Jhaeqon's Tunic
							i(43931),	-- Savryn's Muddy Boots
							i(39458),	-- Cultbreaker's Chestguard
						},
					}),
					q(13354, {	-- Chain of Command (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuests"] = {
							13351,	-- Sneak Preview
							-- TODO:: confirm below:
							13278,	-- Coprous the Defiled
						},
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(43882),	-- Cultist's Cowl
							i(43891),	-- Jhaeqon's Tunic
							i(43931),	-- Savryn's Muddy Boots
							i(39458),	-- Cultbreaker's Chestguard
						},
					}),
					q(13298, {	-- Coprous the Defiled (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13294,	-- Against the Giants
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13278, {	-- Coprous the Defiled (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13277,	-- Against the Giants
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13349, {	-- Cradle of the Frostbrood
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13348,	-- Futility
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39115),	-- Axe of Bloodstained Ice
							i(39135),	-- Wyrmstalker's Bow
							i(39136),	-- Reanimator's Hacker
							i(39130),	-- Corrupter's Shanker
							i(39133),	-- Necrolord's Sacrificial Dagger
						},
					}),
					q(12992, {	-- Crush Dem Vrykuls!
						["qg"] = 30216,	-- Vile
						["sourceQuest"] = 12951,	-- Let the Baron Know
						["coord"] = { 43.4, 24.5, ICECROWN },
						["groups"] = {
							i(43928),	-- Bow of Bone and Sinew
							i(43911),	-- Vile's Poker
							i(43929),	-- Vile's Uglystick
							i(43858),	-- Vrykul Crusher
							i(43927),	-- Wrought-Iron Staff
						},
					}),
					q(13040, {	-- Curing The Incurable
						["qg"] = 30226,	-- Father Gustav
						["sourceQuest"] = 13036,	-- Honor Above All Else
						["coord"] = { 86.8, 76.6, ICECROWN },
					}),
					q(13078, {	-- Dahlia's Tears
						["qg"] = 26917,	-- Alexstrasza the Life-Binder
						["sourceQuest"] = 13077,	-- The Touch of an Aspect
						["coord"] = { 59.8, 54.7, DRAGONBLIGHT },
					}),
					q(13120, {	-- Death's Gaze
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuest"] = 13117,	-- Where Are They Coming From?
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13042, {	-- Deep in the Bowels of The Underhalls
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 12999,	-- The Bone Witch
						["coord"] = { 32.5, 42.9, ICECROWN },
					}),
					q(13039, {	-- Defending The Vanguard
						["qg"] = 30224,	-- Crusader Lord Dalfors
						["sourceQuest"] = 13036,	-- Honor Above All Else
						["coord"] = { 86.0, 75.7, ICECROWN },
						["groups"] = {
							i(43828),	-- Touch of Light
							i(43841),	-- Argent Girdle
							i(43829),	-- Crusader's Locket
							i(43831),	-- Enchanted Plate Waistguard
						},
					}),
					q(13119, {	-- Destroying the Altars
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuest"] = 13117,	-- Where Are They Coming From?
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13394, {	-- Do Your Worst (A)
						["qg"] = 32408,	-- Matthias Lehner
						["sourceQuest"] = 13393,	-- Field Repairs
						["coord"] = { 68.0, 51.5, ICECROWN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(43881),	-- Demolisher Driver's Dustcoat
							i(43892),	-- Refurbished Demolisher Gear Belt
							i(43932),	-- Drivetrain Chain Leggings
							i(43930),	-- Accelerator Stompers
							i(43847),	-- Demolisher's Grips
						},
					}),
					q(13305, {	-- Do Your Worst (H)
						["qg"] = 32408,	-- Mathias Lehner
						["sourceQuest"] = 13304,	-- Field Repairs
						["coord"] = { 68.0, 51.5, ICECROWN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(43881),	-- Demolisher Driver's Dustcoat
							i(43892),	-- Refurbished Demolisher Gear Belt
							i(43932),	-- Drivetrain Chain Leggings
							i(43930),	-- Accelerator Stompers
							i(43847),	-- Demolisher's Grips
						},
					}),
					q(13318, {	-- Drag and Drop (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13315,	-- Sneak Preview
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13323, {	-- Drag and Drop (A) (daily)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13318,	-- Drag and Drop
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13352, {	-- Drag and Drop (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13351,	-- Sneak Preview
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13353, {	-- Drag and Drop (H) (daily)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13352,	-- Drag and Drop
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(12982, {	-- Ebon Blade Prisoners
						["qg"] = 30218,	-- Vaelen the Flayed
						["sourceQuest"] = 13085,	-- Vaelen Has Returned
						["coord"] = { 43.1, 21.0, ICECROWN },
						["groups"] = {
							i(43859),	-- Shadow Vault Cowl
							i(43844),	-- Ebon Pauldrons
							i(43935),	-- Links of the Battlemender
							i(43910),	-- Gloves of the Flayed
						},
					}),
					q(12955, {	-- Eliminate the Competition
						["qg"] = 30074,	-- The Leaper
						["sourceQuest"] = 12938,	-- The Duke
						["coord"] = { 43.4, 25.0, ICECROWN },
						["groups"] = {
							i(43843),	-- Iron Coffin Lid
							i(43946),	-- Chestplate of the Glacial Crusader
							i(43913),	-- Efrem's Bracers
							i(43981),	-- Gauntlets of Onu'zun
							i(43856),	-- Sigrid's Mittens
						},
					}),
					q(13259, {	-- Establishing Superiority
						["qg"] = 31440,	-- Sergeant Kregga
						["sourceQuest"] = 13258,	-- Opportunity
						["coord"] = { 54.9, 84.1, ICECROWN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(38737),	-- Shock-Proof Head Protector
							i(39036),	-- Hulking Horror Tunic
							i(39070),	-- Gloves of the Mad Bomber
							i(39102),	-- Icewalker's Spikes
						},
					}),
					q(13386, {	-- Exploiting an Opening
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13393, {	-- Field Repairs (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13392,	-- Return to the Surface
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13304, {	-- Field Repairs (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13282,	-- Return to the Surface
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13133, {	-- Find the Ancient Hero
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13121,	-- Through the Eye
						["coord"] = { 32.4, 42.9, ICECROWN },
					}),
					q(13232, {	-- Finish Me!
						["qg"] = 31304,	-- Dying Soldier
						["sourceQuest"] = 13231,	-- The Broken Front
						["coord"] = { 68.7, 64.5, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12893, {	-- Free Your Mind
						["qg"] = 29804,	-- Baron Sliver
						["sourceQuest"] = 12891,	-- I Have an Idea, But First...
						["coord"] = { 44.1, 24.6, ICECROWN },
						["groups"] = {
							i(43849),	-- Chain of the Sovereign
							i(43925),	-- Shadow Vault Shawl
							i(43874),	-- Lady Nightswood's Engagement Ring
							i(43926),	-- Signet of Baron Sliver
						},
					}),
					q(13373, {	-- Fringe Science Benefits
						["qg"] = 32430,	-- Fringe Engineer Tezzla
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = HORDE_ONLY,
					}),
					q(12813, {	-- From Their Corpses, Rise!
						["qg"] = 29396,	-- Setaal Darkmender
						["sourceQuest"] = 12807,	-- The Story Thus Far...
						["coord"] = { 19.6, 48.3, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					q(13171, {	-- From Whence They Came
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuest"] = 13168,	-- Parting Gifts
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13396, {	-- Futility (A)
						["qg"] = 32404,	-- Matthias Lehner
						["sourceQuest"] = 13395,	-- Army of the Damned
						["coord"] = { 64.5, 43.9, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13348, {	-- Futility (H)
						["qg"] = 32404,	-- Matthias Lehner
						["sourceQuest"] = 13236,	-- Army of the Damned
						["coord"] = { 64.5, 43.9, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13146, {	-- Generosity Abounds
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuest"] = 13145,	-- The Vile Hold
						["coord"] = { 54.1, 71.1, ICECROWN },
					}),
					q(12949, {	-- Get the Key
						["qg"] = 30056,	-- Vaelen the Flayed
						["sourceQuest"] = 12939,	-- Honor Challenge
						["coord"] = { 41.0, 23.8, ICECROWN },
					}),
					q(13314, {	-- Get the Message
						["qg"] = 30344,	-- High Captain Justin Bartlett
						["sourceQuest"] = 13332,	-- Raise the Barricades
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13296, {	-- Get to Ymirheim! (A)
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13293, {	-- Get to Ymirheim! (H)
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["sourceQuest"] = 13224,	-- Orgrim's Hammer
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13238, {	-- Good For Something?
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuests"] = {
							13230,	-- Avenge Me!
							13228,	-- The Broken Front
						},
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13379, {	-- Green Technology
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = HORDE_ONLY,
					}),
					q(13212, {	-- He's Gone to Pieces
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuest"] = 13144,	-- Killing Two Scourge With One Skeleton
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					heroscall(q(49555, {	-- Hero's Call: Icecrown!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 67,
					})),
					q(13036, {	-- Honor Above All Else
						["qg"] = 28179,	-- Highlord Tirion Fordring
						["sourceQuests"] = {
							13226,	-- Judgment Day Comes (A)
							13227,	-- Judgment Day Comes (H)
						},
						["coord"] = { 87.5, 75.8, ICECROWN },
					}),
					q(12939, {	-- Honor Challenge
						["qg"] = 30002,	-- Duke Lankral
						["sourceQuest"] = 12938,	-- The Duke
						["coord"] = { 44.6, 20.3, ICECROWN },
					}),
					q(13170, {	-- Honor is for the Weak
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuest"] = 13168,	-- Parting Gifts
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13074, {	-- Hope Within the Emerald Nightmare
						["qg"] = 11832,	-- Keeper Remulos
						["sourceQuest"] = 13073,	-- The Keeper's Favor
						["coord"] = { 36.2, 41.8, MOONGLADE },
					}),
					q(13080, {	-- Hope Yet Remains
						["qg"] = 30562,	-- Crusader Bridenbrad
						["sourceQuest"] = 13079,	-- The Boon of Alexstrasza
						["coord"] = { 79.8, 30.8, ICECROWN },
					}),
					q(12891, {	-- I Have an Idea, But First...
						["qg"] = 29804,	-- Baron Sliver
						["sourceQuests"] = {
							12887,	-- It's All Fun and Games (A)
							12892,	-- It's All Fun and Games (H)
						},
						["coord"] = { 44.1, 24.6, ICECROWN },
					}),
					q(13221, {	-- I'm Not Dead Yet! (A)
						["qg"] = 31279,	-- Father Kamaros
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["coord"] = { 31.7, 64.7, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13229, {	-- I'm Not Dead Yet! (H)
						["qg"] = 31279,	-- Father Kamaros
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["coord"] = { 31.7, 64.7, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13138, {	-- I'm Smelting... Smelting!
						["qg"] = 30708,	-- Crusader Olakin Sainrith
						["sourceQuest"] = 13136,	-- Jagged Shards
						["coord"] = { 35.4, 66.4, ICECROWN },
					}),
					q(12896, {	-- If He Cannot Be Turned (A)
						["qg"] = 29804,	-- Baron Sliver
						["sourceQuest"] = 12893,	-- Free Your Mind
						["coord"] = { 44.1, 24.6, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12897, {	-- If He Cannot Be Turned (H)
						["qg"] = 29804,	-- Baron Sliver
						["sourceQuest"] = 12893,	-- Free Your Mind
						["coord"] = { 44.1, 24.6, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13044, {	-- If There Are Survivors...
						["qg"] = 30223,	-- Crusade Commander Entari
						["sourceQuests"] = {
							13040,	-- Curing The Incurable
							13039,	-- Defending The Vanguard
							13008,	-- Scourge Tactics
						},
						["coord"] = { 87.0, 75.8, ICECROWN },
					}),
					q(12840, {	-- In Strict Confidence
						["qg"] = 29344,	-- Lord-Commander Arete
						["sourceQuest"] = 12839,	-- The Grand (Admiral's) Plan
						["coord"] = { 19.5, 48.1, ICECROWN },
						["groups"] = {
							i(43883),	-- Arete's Command
							i(43920),	-- Growler's Intimidation
							i(43919),	-- Curved Assassin's Dagger
							i(43890),	-- Interrogator's Flaming Knuckles
							i(43921),	-- Staff of Interrogation
						},
					}),
					q(12838, {	-- Intelligence Gathering
						["qg"] = 29456,	-- Aurochs Grimbane
						["sourceQuest"] = 12807,	-- The Story Thus Far...
						["coord"] = { 20.0, 47.9, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					q(13139, {	-- Into The Frozen Heart Of Northrend
						["qg"] = 30683,	-- Father Gustav
						["sourceQuests"] = {
							13125,	-- The Air Stands Still
							13135,	-- It Could Kill Us All
							13110,	-- The Restless Dead
							13130,	-- The Stone That Started A Revolution
						},
						["coord"] = { 82.8, 72.7, ICECROWN },
					}),
					q(13045, {	-- Into The Wild Green Yonder
						["qg"] = 30227,	-- Penumbrius
						["sourceQuest"] = 13044,	-- If There Are Survivors...
						["coord"] = { 87.0, 79.0, ICECROWN },
					}),
					q(13135, {	-- It Could Kill Us All
						["qg"] = 30714,	-- Crusade Engineer Spitzpatrick
						["sourceQuests"] = {
							13104,	-- Once More Unto The Breach, Hero (Non-DK)
							13105,	-- Once More Unto The Breach, Hero (DK)
						},
						["coord"] = { 82.9, 73.0, ICECROWN },
						["maps"] = { CRYSTALSONG_FOREST },
					}),
					q(12887, {	-- It's All Fun and Games (A)
						["qg"] = 29799,	-- Thassarian
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(12892, {	-- It's All Fun and Games (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13136, {	-- Jagged Shards
						["provider"] = { "i", 43242 },	-- Jagged Shard
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["cr"] = 30597,	-- Spiked Ghoul
					}),
					q(13341, {	-- Joining the Assault (A)
						["qg"] = 32302,	-- Knight-Captain Drosche
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13340, {	-- Joining the Assault (H)
						["qg"] = 31240,	-- Warbringer Davos Rioht
						["sourceQuest"] = 13224,	-- Orgrim's Hammer
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13226, {	-- Judgment Day Comes! (A)
						["qg"] = 31259,	-- Absalan the Pious
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(13227, {	-- Judgment Day Comes! (H)
						["qg"] = 31261,	-- Brother Keltan
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(13331, {	-- Keeping the Alliance Blind
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuest"] = 13313,	-- Blinding the Eyes in the Sky
						["description"] = "On Orgrim's Hammer.",
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13144, {	-- Killing Two Scourge With One Skeleton
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuests"] = {
							13152,	-- A Visit to the Doctor
							13211,	-- By Fire Be Purged
						},
						["coord"] = { 35.3, 66.3, ICECROWN },
						["groups"] = {
							i(38739),	-- Fleshwerk Shackles
							i(39038),	-- Fleshwerk Wristguards
							i(39068),	-- Flesh-Scaled Bracers
							i(39104),	-- Hardened Bone Wrist Protectors
						},
					}),
					q(13383, {	-- Killohertz
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13280, {	-- King of the Mountain (A)
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13296,	-- Get to Ymirheim!
						["coord"] = { 62.8, 50.5, ICECROWN },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13283, {	-- King of the Mountain (H)
						["qg"] = 31781,	-- Blast Thunderbomb
						["sourceQuest"] = 13293,	-- Get to Ymirheim!
						["coord"] = { 51.9, 57.5, ICECROWN },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13401, {	-- Knowledge is a Terrible Burden (A)
						["qg"] = 32497,	-- Matthias Lehner
						["sourceQuest"] = 13400,	-- The Hunter and the Prince
						["coord"] = { 49.1, 73.1, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13362, {	-- Knowledge is a Terrible Burden (H)
						["qg"] = 32497,	-- Matthias Lehner
						["sourceQuest"] = 13361,	-- The Hunter and the Prince
						["coord"] = { 49.1, 73.1, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13380, {	-- Leading the Charge
						["qg"] = 32444,	-- Kibli Killohertz
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12995, {	-- Leave Our Mark
						["qg"] = 29343,	-- Baron Sliver
						["sourceQuest"] = 12951,	-- Let the Baron Know
						["coord"] = { 42.8, 25.0, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					q(12951, {	-- Let the Baron Know
						["qg"] = 30056,	-- Vaelen the Flayed
						["sourceQuest"] = 12949,	-- Get the Key
						["coord"] = { 41.0, 23.8, ICECROWN },
					}),
					q(13482, {	-- Let's Get Out of Here! (A)
						["qg"] = 31279,	-- Father Kamaros
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["coord"] = { 31.7, 64.7, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13481, {	-- Let's Get Out of Here! (H)
						["qg"] = 32800,	-- Father Kamaros
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["coord"] = { 31.8, 64.8, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13083, {	-- Light Within the Darkness
						["provider"] = { "o", 192833 },	-- Bridenbrad's Possessions
						["sourceQuest"] = 13082,	-- The Boon of A'day
						["coord"] = { 79.7, 30.8, ICECROWN },
						["groups"] = {
							i(44018),	-- Bridenbrad's Sash
							i(44041),	-- Belt of the Never-Forgotten
							i(44042),	-- Chained Belt of Remembrance
							i(44043),	-- Girdle of Eternal Memory
							i(44039),	-- Signet of Bridenbrad
						},
					}),
					q(13234, {	-- Make Them Pay!
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuests"] = {
							13230,	-- Avenge Me!
							13228,	-- The Broken Front
						},
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13147, {	-- Matchmaker
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuest"] = 13145,	-- The Vile Hold
						["coord"] = { 54.1, 71.1, ICECROWN },
					}),
					q(13308, {	-- Mind Tricks
						["qg"] = 31892,	-- Darkspeaker R'khem
						["sourceQuests"] = {
							13224,	-- Orgrim's Hammer (H)
							13225,	-- The Skybreaker (A)
						},
						["coord"] = { 54.4, 59.2, ICECROWN },
						["groups"] = {
							i(44021),	-- The Darkspeaker's Footpads
							i(44024),	-- The Darkspeaker's Treads
							i(44030),	-- The Darkspeaker's Sabatons
							i(44031),	-- The Darkspeaker's Iron Walkers
						},
					}),
					q(13345, {	-- Need More Info (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13318,	-- Drag and Drop
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13366, {	-- Need More Info (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13352,	-- Drag and Drop
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13297, {	-- Neutralizing the Plague (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13295,	-- Basic Chemistry
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13281, {	-- Neutralizing the Plague (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13279,	-- Basic Chemistry
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13143, {	-- New Recruit
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuest"] = 13155,	-- Vereth the Cunning
						["coord"] = { 54.1, 71.1, ICECROWN },
					}),
					q(12815, {	-- No Fly Zone
						["qg"] = 29405,	-- Uzo Deathcaller
						["sourceQuest"] = 12814,	-- You'll Need a Gryphon
						["coord"] = { 19.6, 47.7, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					pvp(q(13233, {	-- No Mercy!
						["qg"] = 30344,	-- High Captain Justin Bartlett
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					q(13346, {	-- No Rest For The Wicked (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13345,	-- Need More Info
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(44394),	-- Encrusted Zombie Finger
							i(44393),	-- Polished Zombie Exterminator
							i(44395),	-- Touch of Unlife
						},
					}),
					q(13350, {	-- No Rest For The Wicked (A) (daily)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13346,	-- No Rest For The Wicked
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13367, {	-- No Rest For The Wicked (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13366,	-- Need More Info
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(44393),	-- Polished Zombie Exterminator
							i(44394),	-- Encrusted Zombie Finger
							i(44395),	-- Touch of Unlife
						},
					}),
					q(13368, {	-- No Rest For The Wicked (H) (daily)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13367,	-- No Rest For The Wicked
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13342, {	-- Not a Bug (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13318,	-- Drag and Drop
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39372),	-- Mantle of the Dark Messenger
							i(39414),	-- Gilly's Strangulation Gauntlets
							i(39443),	-- Chain Gloves of the Demonic Minion
							i(39462),	-- Legplates of the Northern Expedition
							i(39471),	-- Gutbuster of Aldur'thar
						},
					}),
					q(13344, {	-- Not a Bug (A) (daily)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13342,	-- Not a Bug
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13358, {	-- Not a Bug (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13352,	-- Drag and Drop
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39372),	-- Mantle of the Dark Messenger
							i(39414),	-- Gilly's Strangulation Gauntlets
							i(39443),	-- Chain Gloves of the Demonic Minion
							i(39462),	-- Legplates of the Northern Expedition
							i(39471),	-- Gutbuster of Aldur'thar
						},
					}),
					q(13365, {	-- Not a Bug (H) (daily)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13358,	-- Not a Bug
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13137, {	-- Not-So-Honorable Combat
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13133,	-- Find the Ancient Hero
						["coord"] = { 32.4, 42.9, ICECROWN },
						["groups"] = {
							i(44016),	-- Wristguard of the Bone Witch
							i(44036),	-- Njorndar Furywraps
							i(44037),	-- Iskalder's Fate
							i(44038),	-- Battlescar Spirebands
						},
					}),
					q(13104, {	-- Once More Unto The Breach, Hero (non-DK)
						["qg"] = 30677,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13086,	-- The Last Line Of Defense
						["coord"] = { 86.0, 75.7, ICECROWN },
						["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					}),
					q(13105, {	-- Once More Unto The Breach, Hero (DK)
						["qg"] = 30677,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13086,	-- The Last Line of Defense
						["coord"] = { 86.0, 75.7, ICECROWN },
						["classes"] = { DEATHKNIGHT },
					}),
					q(13258, {	-- Opportunity
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 12899,	-- The Shadow Vault
						["coord"] = { 65.9, 49.8, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13224, {	-- Orgrim's Hammer
						["qg"] = 31240,	-- Warlord Hork Strongbrow
						["sourceQuest"] = 13157,	-- The Crusaders' Pinnacle
						["coord"] = { 79.4, 72.7, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13168, {	-- Parting Gifts
						["allianceQuestData"] = {
							["sourceQuests"] = {
								-- TODO: need to verify this. May also require some progress in the shadow vault
								13392,	-- Return to the Surface (A)
								13389,	-- A Short Fuse (A)
							},
						},
						["hordeQuestData"] = {
							["sourceQuests"] = {
								-- TODO: need to verify this. May also require some progress in the shadow vault
								13282,	-- Return to the Surface (H)
								13263,	-- A Short Fuse (H)
							},
						},
						["qg"] = 30946,	-- Keritose Bloodblade
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13287, {	-- Poke and Prod (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13286,	-- All the Help We Can Get.
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(43903),	-- Ring of the Fallen Shadow Adept
							i(43889),	-- Hulking Abomination Hide Cloak
							i(43884),	-- Amulet of the Malefic Necromancer
						},
					}),
					q(13237, {	-- Poke and Prod (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13260,	-- Takes One to Know One
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(43903),	-- Ring of the Fallen Shadow Adept
							i(43889),	-- Hulking Abomination Hide Cloak
							i(43884),	-- Amulet of the Malefic Necromancer
						},
					}),
					q(13418, {	-- Preparations for War [A]
						["qg"] = 31081,	-- Officer Van Rossem
						-- #if AFTER 7.3.5.25632
						["sourceQuest"] = 49555,	-- Hero's Call: Icecrown!
						-- #endif
						["coord"] = { 67.7, 47.2, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13419, {	-- Preparations for War [H]
						["qg"] = 31085,	-- Sky-Reaver Klum
						-- #if AFTER 7.3.5.25632
						["sourceQuest"] = 49537,	-- Warchief's Command: Icecrown!
						-- #endif
						["coord"] = { 69.4, 40.7, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
					}),
					q(13220, {	-- Putting Olakin Back Together Again
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuest"] = 13212,	-- He's Gone to Pieces
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13382, {	-- Putting the Hertz: The Valley of Lost Hope
						["qg"] = 32444,	-- Kibli Killohertz
						["sourceQuest"] = 13381,	-- Watts My Target
						["coord"] = { 54.0, 42.8, ICECROWN },
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13332, {	-- Raise the Barricades (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13345,	-- Need More Info
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13306, {	-- Raise the Barricades (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13366,	-- Need More Info
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13092, {	-- Reading the Bones
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 12999,	-- The Bone Witch
						["coord"] = { 32.5, 42.9, ICECROWN },
						["groups"] = {
							i(43090),	-- Fate Rune of Baneful Intent
							i(43094),	-- Fate Rune of Night Invicibility
							i(43134),	-- Fate Rune of Primal Energy
							i(43135),	-- Fate Rune of Fleet Feet
							i(43141),	-- Fate Rune of Unsurpassed Vigor
						},
					}),
					q(13093, {	-- Reading the Bones (repeatable)
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13092,	-- Reading the Bones
						["coord"] = { 32.5, 42.9, ICECROWN },
						["repeatable"] = true,
						["sym"] = {{"select","itemID",
							43090,	-- Fate Rune of Baneful Intent
							43094,	-- Fate Rune of Night Invicibility
							43134,	-- Fate Rune of Primal Energy
							43135,	-- Fate Rune of Fleet Feet
							43141,	-- Fate Rune of Unsurpassed Vigor
						}},
					}),
					q(13321, {	-- Retest Now (A)
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13320,	-- Cannot Reproduce
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39134),	-- Bow of Regression
							i(39144),	-- Twisted Hooligan Whacker
							i(39143),	-- Writhing Mace
							i(39121),	-- Cultist's Cauldron Stirrer
							i(39138, {	-- Deadly Razordarts
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(13322, {	-- Retest Now (A) (daily)
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13321,	-- Retest Now
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13356, {	-- Retest Now (H)
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["sourceQuest"] = 13355,	-- Cannot Reproduce
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39134),	-- Bow of Regression
							i(39144),	-- Twisted Hooligan Whacker
							i(39143),	-- Writhing Mace
							i(39121),	-- Cultist's Cauldron Stirrer
							i(39138, {	-- Deadly Razordarts
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(13357, {	-- Retest Now (H) (daily)
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["sourceQuest"] = 13356,	-- Retest Now
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13392, {	-- Return to the Surface (A)
						["qg"] = 31237,	-- Matthias Lehner
						["sourceQuest"] = 13391,	-- Time to Hide
						["coord"] = { 53.8, 86.9, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13282, {	-- Return to the Surface (H)
						["qg"] = 31237,	-- Matthias Lehner
						["sourceQuest"] = 13275,	-- Time to Hide
						["coord"] = { 53.8, 86.9, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13059, {	-- Revenge for the Vargul
						["qg"] = 30406,	-- Bethod Feigr
						["sourceQuest"] = 12999,	-- The Bone Witch
						["coord"] = { 36.1, 33.0, ICECROWN },
						["groups"] = {
							i(43862),	-- Mantle of the Underhalls
							i(43908),	-- Boots of the Fallen Thane
							i(43978),	-- Circlet of Suffering
							i(43943),	-- Gauntlets of the Holy Gladiator
							i(43924),	-- Illskar's Greatcloak
						},
					}),
					q(13406, {	-- Riding the Wavelength: The Bombardment
						["qg"] = 32430,	-- Fringe Engineer Tezzla
						["sourceQuest"] = 13376,	-- Total Ohmage: The Valley of Lost Hope!
						["coord"] = { 54.0, 36.9, ICECROWN },
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/50 Bombardment Infantry slain
								["provider"] = { "n", 32399 },	-- Bombardment Infantry
							}),
							objective(2, {	-- 0/10 Bombardment Captain slain
								["provider"] = { "n", 32410 },	-- Bombardment Captain
							}),
							objective(3, {	-- 0/20 Gargoyle Ambusher slain
								["provider"] = { "n", 32188 },	-- Gargoyle Ambusher
							}),
						},
					}),
					q(13008, {	-- Scourge Tactics
						["qg"] = 30223,	-- Crusade Commander Entari
						["sourceQuest"] = 13036,	-- Honor Above All Else
						["coord"] = { 87.0, 75.8, ICECROWN },
					}),
					q(12847, {	-- Second Chances
						["qg"] = 29344,	-- Lord-Commander Arete
						["sourceQuest"] = 12840,	-- In Strict Confidence
						["coord"] = { 19.5, 48.1, ICECROWN },
					}),
					q(13387, {	-- Securing the Perimeter
						["qg"] = 31444,	-- Captain Kendall
						["sourceQuest"] = 13386,	-- Exploiting an Opening
						["coord"] = { 51.7, 86.6, ICECROWN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(38737),	-- Shock-Proof Head Protector
							i(39036),	-- Hulking Horror Tunic
							i(39070),	-- Gloves of the Mad Bomber
							i(39102),	-- Icewalker's Spikes
						},
					}),
					q(13172, {	-- Seeds of Chaos
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuests"] = {
							13169,	-- An Undead's Best Friend
							13171,	-- From Whence They Came
							13170,	-- Honor is for the Weak
						},
						["coord"] = { 44.0, 24.5, ICECROWN },
						["groups"] = {
							i(43872),	-- Weeping Mantle
							i(43905),	-- Fur-Lined Helm
							i(43976),	-- Chain Gloves of the Quarry
							i(43941),	-- Grimy Saronite Pauldrons
							i(43923),	-- Bloodblade
						},
					}),
					q(13388, {	-- Set it Off!
						["qg"] = 31444,	-- Captain Kendall
						["sourceQuest"] = 13387,	-- Securing the Perimeter
						["coord"] = { 51.7, 86.6, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12943, {	-- Shadow Vault Decree
						["qg"] = 30002,	-- Duke Lankral
						["sourceQuest"] = 12939,	-- Honor Challenge
						["coord"] = { 44.6, 20.3, ICECROWN },
						["groups"] = {
							i(43945),	-- Blackened Breastplate of the Vault
							i(43912),	-- Vest of Jotunheim
							i(43980),	-- Thane's Restraints
							i(43857),	-- Duke Lankral's Velvet Slippers
						},
					}),
					q(13339, {	-- Shatter the Shards (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13335,	-- Before the Gate of Horror
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13328, {	-- Shatter the Shards (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13329,	-- Before the Gate of Horror
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13069, {	-- Shoot 'Em Up
						["qg"] = 30074,	-- The Leaper
						["sourceQuest"] = 12982,	-- Ebon Blade Prisoners
						["coord"] = { 43.5, 25.1, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					q(13397, {	-- Sindragosa's Fall
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13396,	-- Futility
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39115),	-- Axe of Bloodstained Ice
							i(39135),	-- Wyrmstalker's Bow
							i(39136),	-- Reanimator's Hacker
							i(39130),	-- Corrupter's Shanker
							i(39133),	-- Necrolord's Sacrificial Dagger
						},
					}),
					q(13300, {	-- Slaves to Saronite (A)
						["qg"] = 31259,	-- Absalan the Pious
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13302, {	-- Slaves to Saronite (H)
						["qg"] = 31261,	-- Brother Keltan
						["sourceQuest"] = 13224,	-- Orgrim's Hammer
						["description"] = "On Orgrim's Hammer.",
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(13315, {	-- Sneak Preview (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13288,	-- That's Abominable!
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13351, {	-- Sneak Preview (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13264,	-- That's Abominable!
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13134, {	-- Spill Their Blood
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuests"] = {
							13120,	-- Death's Gaze
							13119,	-- Destroying the Altars
						},
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13160, {	-- Stunning View
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuest"] = 13145,	-- The Vile Hold
						["coord"] = { 54.1, 71.1, ICECROWN },
					}),
					q(13260, {	-- Takes One to Know One
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuests"] = {
							13230,	-- Avenge Me!
							13228,	-- The Broken Front
						},
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13288, {	-- That's Abominable! (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13287,	-- Poke and Prod
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39814),	-- Slippers of the Broken Front
							i(39881),	-- Mantle of Reanimation
							i(39887),	-- Geist Stalker Leggings
							i(39888),	-- Scourgebane Pauldrons
						},
					}),
					q(13289, {	-- That's Abominable! (A) (daily)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13288,	-- That's Abominable!
						["description"] = "On the Skybreaker.",
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						-- NOTE:: Oddly enough, this doesn't exist for alliance despite the horde version being available
					}),
					q(13264, {	-- That's Abominable! (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13237,	-- Poke and Prod
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39814),	-- Slippers of the Broken Front
							i(39881),	-- Mantle of Reanimation
							i(39887),	-- Geist Stalker Leggings
							i(39888),	-- Scourgebane Pauldrons
						},
					}),
					q(13276, {	-- That's Abominable! (H) (daily)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13264,	-- That's Abominable!
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						-- NOTE:: Oddly enough, this exists for horde despite the alliance version being unavailable
					}),
					q(12852, {	-- The Admiral Revealed
						["qg"] = 29560,	-- Lord-Commander Arete
						["sourceQuest"] = 12847,	-- Second Chances
						["coord"] = { 9.5, 47.3, ICECROWN },
						["groups"] = {
							i(44034),	-- Amulet of the Crusade
							i(44017),	-- Emeline's Locket
							i(44035),	-- Reinforced Titanium Neckguard
							i(44033),	-- The Severed Noose of Westwind
						},
					}),
					q(13125, {	-- The Air Stands Still
						["qg"] = 30596,	-- The Ebon Watcher
						["sourceQuests"] = {
							13118,	-- The Purging Of Scourgeholme
							13122,	-- The Scourgestone
						},
						["coord"] = { 83.0, 72.9, ICECROWN },
						["groups"] = {
							i(43839),	-- Leiah's Footpads
							i(43840),	-- Sixen's Skullcap
							i(43830),	-- Cobalt's Shoulderguards
							i(43842),	-- Jayde's Reinforced Handguards
						},
					}),
					q(13091, {	-- The Art of Being a Water Terror
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13043,	-- The Sum is Greater than the Parts
						["coord"] = { 32.4, 42.9, ICECROWN },
						["groups"] = {
							i(43863),	-- Pantaloons of the Water Magi
							i(43907),	-- Spear-Sisters Mantle
							i(43977),	-- Links of the Sleep-Watcher
							i(43942),	-- Jotunheim Shackles
						},
					}),
					q(13141, {	-- The Battle For Crusaders' Pinnacle
						["qg"] = 30677,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13139,	-- Into The Frozen Heart of Northrend
						["coord"] = { 86.0, 75.7, ICECROWN },
					}),
					q(12999, {	-- The Bone Witch
						["qg"] = 30074,	-- The Leaper
						["sourceQuest"] = 12955,	-- Eliminate the Competition
						["coord"] = { 43.4, 25.0, ICECROWN },
					}),
					q(13082, {	-- The Boon of A'dal
						["qg"] = 18481,	-- A'dal
						["sourceQuest"] = 13081,	-- The Will of the Naaru
						["coord"] = { 53.9, 44.7, ICECROWN },
						["maps"] = { SHATTRATH_CITY },
					}),
					q(13079, {	-- The Boon of Alexstrasza
						["qg"] = 26917,	-- Alexstrasza the Life-Binder
						["sourceQuest"] = 13078,	-- Dahlia's Tears
						["coord"] = { 59.8, 54.7, DRAGONBLIGHT },
					}),
					q(13075, {	-- The Boon of Remulos
						["qg"] = 11832,	-- Keeper Remulos
						["sourceQuest"] = 13074,	-- Hope Within the Emerald Nightmare
						["coord"] = { 36.2, 41.8, MOONGLADE },
					}),
					q(13231, {	-- The Broken Front (A)
						["qg"] = 30344,	-- High Captain Justin Bartlett
						["sourceQuest"] = 13225,	-- The Skybreaker
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13228, {	-- The Broken Front (H)
						["qg"] = 30824,	-- Sky-Reaver Korm Blackscar
						["sourceQuest"] = 13224,	-- Orgrim's Hammer
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13157, {	-- The Crusaders' Pinnacle
						["qg"] = 30683,	-- Father Gustav
						["sourceQuest"] = 13141,	-- The Battle For Crusaders' Pinnacle
						["coord"] = { 82.8, 72.7, ICECROWN },
						["groups"] = {
							i(44019),	-- The Argent Skullcap
							i(44044),	-- Tirion's Headwrap
							i(44045),	-- Crusader's Coif
							i(44046),	-- The Argent Crown
							i(44040),	-- The Crusader's Resolution
						},
					}),
					q(12938, {	-- The Duke
						["qg"] = 29343,	-- Baron Sliver
						["sourceQuests"] = {
							12898,	-- The Shadow Vault (alliance)
							12899,	-- The Shadow Vault (horde)
						},
						["coord"] = { 44.1, 24.7, ICECROWN },
					}),
					q(13164, {	-- The Fate of Bloodbane
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuests"] = {
							13163,	-- The Rider of Blood
							13162,	-- The Rider of Frost
							13161,	-- The Rider of the Unholy
						},
						["coord"] = { 54.1, 71.1, ICECROWN },
						["groups"] = {
							i(44027),	-- Bloodbane Shroud
							i(44025),	-- Bloodbane Cloak
							i(44020),	-- Bloodbane's Fall
							i(44026),	-- Bloodbane's Resolve
						},
					}),
					q(13235, {	-- The Flesh Giant Champion
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuest"] = 13220,	-- Putting Olakin Back Together Again
						["coord"] = { 35.3, 66.3, ICECROWN },
						["groups"] = {
							i(44378),	-- Mantle of the Flesh Giant
							i(44379),	-- Shoulderpads of Fleshworks
							i(44380),	-- Giant Champion's Spaulders
							i(44381),	-- Pauldrons of Morbidus
						},
					}),
					q(12839, {	-- The Grand (Admiral's) Plan
						["provider"] = { "i", 40666 },	-- Note from the Grand Admiral
						["sourceQuest"] = 12838,	-- Intelligence Gathering -- NOTE: this isn't actually a sourceQuest, but you must have it to start this one
						["coord"] = { 9.2, 41.0, ICECROWN },
						["description"] = "Must be in |cFFFFD700Intelligence Gathering|r to loot the quest item from a chest.",
					}),
					q(13338, {	-- The Guardians of Corp'rethar (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13335,	-- Before the Gate of Horror
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13316, {	-- The Guardians of Corp'rethar (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13329,	-- Before the Gate of Horror
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13400, {	-- The Hunter and the Prince (A)
						["qg"] = 32497,	-- Matthias Lehner
						["sourceQuest"] = 13399,	-- Time for Answers
						["coord"] = { 49.1, 73.1, ICECROWN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(38741),	-- Gloves of Tormented Recollection
							i(39040),	-- Gloves of Troubled Memory
							i(39066),	-- Leggings of the Turning Point
							i(39108),	-- Bloodstained Helmet
						},
					}),
					q(13361, {	-- The Hunter and the Prince (H)
						["qg"] = 32497,	-- Matthias Lehner
						["sourceQuest"] = 13360,	-- Time for Answers
						["coord"] = { 49.1, 73.1, ICECROWN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(38741),	-- Gloves of Tormented Recollection
							i(39040),	-- Gloves of Troubled Memory
							i(39066),	-- Leggings of the Turning Point
							i(39108),	-- Bloodstained Helmet
						},
					}),
					q(13337, {	-- The Ironwall Rampart (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13332,	-- Raise the Barricades
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(13312, {	-- The Ironwall Rampart (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 13306,	-- Raise the Barricades
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
					}),
					q(13073, {	-- The Keeper's Favor
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13072,	-- A Hero Remains
						["coord"] = { 79.7, 71.7, ICECROWN },
						["maps"] = { MOONGLADE },
					}),
					q(13086, {	-- The Last Line Of Defense
						["qg"] = 30657,	-- Siegemaster Fezzik
						["sourceQuest"] = 13070,	-- A Cold Front Approaches
						["coord"] = { 85.6, 76.0, ICECROWN },
						["groups"] = {
							i(44013),	-- Cannoneer's Fuselighter
							i(44015),	-- Cannoneer's Morale
							i(44014),	-- Fezzik's Pocketwatch
						},
					}),
					q(13118, {	-- The Purging Of Scourgeholme
						["qg"] = 30596,	-- The Ebon Watcher
						["sourceQuests"] = {
							13104,	-- Once More Unto The Breach, Hero (Non-DK)
							13105,	-- Once More Unto The Breach, Hero (DK)
						},
						["coord"] = { 83.0, 72.9, ICECROWN },
					}),
					q(13110, {	-- The Restless Dead
						["qg"] = 30683,	-- Father Gustav
						["sourceQuests"] = {
							13104,	-- Once More Unto The Breach, Hero (Non-DK)
							13105,	-- Once More Unto The Breach, Hero (DK)
						},
						["coord"] = { 82.8, 72.7, ICECROWN },
						["groups"] = {
							i(43833),	-- Blade of Echoes
							i(43832),	-- The Argent Resolve
							i(43835),	-- Hand of Gustav
							i(43834),	-- Staff of Redeemed Souls
						},
					}),
					q(13163, {	-- The Rider of Blood
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuests"] = {
							13146,	-- Generosity Abounds
							13147,	-- Matchmaker
							13160,	-- Stunning View
						},
						["coord"] = { 54.1, 71.1, ICECROWN },
						["groups"] = {
							i(43877),	-- Blood-Forged Circle
							i(43896),	-- Grotesque Butcher's Pants
							i(43937),	-- Blood-Stalker's Cover
							i(43939),	-- Breastplate of Splattered Blood
						},
					}),
					q(13162, {	-- The Rider of Frost
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuests"] = {
							13146,	-- Generosity Abounds
							13147,	-- Matchmaker
							13160,	-- Stunning View
						},
						["coord"] = { 54.1, 71.1, ICECROWN },
						["groups"] = {
							i(43899),	-- Sapph's Cleaver
							i(43897),	-- Frost Climber's Hatchet
							i(43898),	-- Ice Quick Edge
							i(43875),	-- Axe of the Cunning
						},
					}),
					q(13161, {	-- The Rider of the Unholy
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuests"] = {
							13146,	-- Generosity Abounds
							13147,	-- Matchmaker
							13160,	-- Stunning View
						},
						["coord"] = { 54.1, 71.1, ICECROWN },
						["groups"] = {
							i(43904),	-- Discarded Slaughterhouse Gloves
							i(43948),	-- Blood-Encrusted Boots
							i(43940),	-- Plated Legs of the Unholy
							i(43873),	-- Frail Bone Wand
						},
					}),
					q(13140, {	-- The Runesmiths of Malykriss
						["qg"] = 30708,	-- Crusader Olakin Sainrith
						["sourceQuest"] = 13136,	-- Jagged Shards
						["coord"] = { 35.4, 66.4, ICECROWN },
					}),
					q(13122, {	-- The Scourgestone
						["qg"] = 30596,	-- The Ebon Watcher
						["sourceQuests"] = {
							13104,	-- Once More Unto The Breach, Hero (Non-DK)
							13105,	-- Once More Unto The Breach, Hero (DK)
						},
						["coord"] = { 83.0, 72.9, ICECROWN },
					}),
					q(12898, {	-- The Shadow Vault (A)
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 12896,	-- If He Cannot Be Turned
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(43838),	-- Chuchu's Tiny Box of Horrors
							i(43837),	-- Softly Glowing Orb
							i(43836),	-- Thorny Rose Brooch
						},
					}),
					q(12899, {	-- The Shadow Vault (H)
						["qg"] = 29795,	-- Koltira Deathweaver
						["sourceQuest"] = 12897,	-- If He Cannot Be Turned
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(43838),	-- Chuchu's Tiny Box of Horrors
							i(43837),	-- Softly Glowing Orb
							i(43836),	-- Thorny Rose Brooch
						},
					}),
					q(13225, {	-- The Skybreaker
						["qg"] = 31241,	-- Marshal Ivalius
						["sourceQuest"] = 13157,	-- The Crusaders' Pinnacle
						["coord"] = { 79.3, 72.8, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13292, {	-- The Solution Solution
						["qg"] = 30345,	-- Chief Engineer Boltwrench
						["sourceQuest"] = 13291,	-- Borrowed Technology
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					}),
					q(13130, {	-- The Stone That Started A Revolution
						["qg"] = 30686,	-- Crusade Architect Silas
						["sourceQuests"] = {
							13104,	-- Once More Unto The Breach, Hero (Non-DK)
							13105,	-- Once More Unto The Breach, Hero (DK)
						},
						["coord"] = { 83.0, 73.0, ICECROWN },
						["maps"] = { CRYSTALSONG_FOREST },
						["groups"] = {
							i(43855),	-- Adepts Wristwraps
							i(43914),	-- Girdle of Reprieve
							i(43982),	-- Architect's Spaulders
							i(43947),	-- Stability Girdle
						},
					}),
					q(12807, {	-- The Story Thus Far...
						["qg"] = 29344,	-- Lord-Commander Arete
						["sourceQuest"] = 12806,	-- To the Rise with all Due haste!
						["coord"] = { 19.5, 48.1, ICECROWN },
					}),
					q(13043, {	-- The Sum is Greater than the Parts
						["provider"] = { "i", 42772 },	-- Dr. Terrible's "Building a Better Flesh Giant"
						["sourceQuest"] = 12999,	-- The Bone Witch
						["coord"] = { 34.0, 36.3, ICECROWN },
						["cr"] = 30409,	-- Apprentice Osterkilgr
						["groups"] = {
							i(43861),	-- Bone Witch's Drape
							i(43909),	-- Belt of Njorndar
							i(43979),	-- Glaciel Ranger's Leggings
							i(43944),	-- Rings of Nergeld
						},
					}),
					q(13077, {	-- The Touch of an Aspect
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13076,	-- Time Yet Remains
						["coord"] = { 79.7, 71.7, ICECROWN },
					}),
					q(13145, {	-- The Vile Hold
						["qg"] = 30944,	-- Vereth the Cunning
						["sourceQuest"] = 13143,	-- New Recruit
						["coord"] = { 54.1, 71.1, ICECROWN },
						["groups"] = {
							i(43866),	-- Lithe Stalker's Cord
							i(43906),	-- Cunning Leather Tunic
							i(43934),	-- Enchanted Bracelets of the Scout
							i(43845),	-- Legplates of Dominion
						},
					}),
					q(13081, {	-- The Will of the Naaru
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13080,	-- Hope Yet Remains
						["coord"] = { 79.7, 71.7, ICECROWN },
					}),
					q(13121, {	-- Through the Eye
						["qg"] = 30232,	-- The Bone Witch
						["sourceQuest"] = 13091,	-- The Art of Being a Water Terror
						["coord"] = { 32.5, 42.9, ICECROWN },
					}),
					q(13399, {	-- Time for Answers (A)
						["qg"] = 32423,	-- Matthias Lehner
						["sourceQuest"] = 13398,	-- Where Dragons Fell
						["coord"] = { 71.5, 37.6, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13360, {	-- Time for Answers (H)
						["qg"] = 32423,	-- Matthias Lehner
						["sourceQuest"] = 13359,	-- Where Dragons Fell
						["coord"] = { 71.5, 37.6, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(13391, {	-- Time to Hide (A)
						["qg"] = 31237,	-- Matthias Lehner
						["sourceQuest"] = 13390,	-- A Voice in the Dark
						["coord"] = { 53.8, 86.9, ICECROWN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(43885),	-- Scourgehammer
							i(43918),	-- Shooter's Glory
							i(43915),	-- Pilot's Knife
							i(43916),	-- Mace of the Final Command
							i(43888),	-- Blunt Brainwasher
							i(43917),	-- Ritualist's Bloodletter
						},
					}),
					q(13275, {	-- Time to Hide (H)
						["qg"] = 31237,	-- Matthias Lehner
						["sourceQuest"] = 13271,	-- A Voice in the Dark
						["coord"] = { 53.8, 86.9, ICECROWN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(43885),	-- Scourgehammer
							i(43918),	-- Shooter's Glory
							i(43915),	-- Pilot's Knife
							i(43916),	-- Mace of the Final Command
							i(43888),	-- Blunt Brainwasher
							i(43917),	-- Ritualist's Bloodletter
						},
					}),
					q(13076, {	-- Time Yet Remains
						["qg"] = 30562,	-- Crusader Bridenbrad
						["sourceQuest"] = 13075,	-- The Boon of Remulos
						["coord"] = { 79.8, 30.8, ICECROWN },
					}),
					q(13403, {	-- Tirion's Gambit (A)
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13402,	-- Tirion's Help
						["coord"] = { 79.7, 71.7, ICECROWN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(44745),	-- Blade of the Empty Void
							i(44746),	-- Knife of the Tarnished Soul
							i(44747),	-- Hammer of Wrenching Charge
							i(44748),	-- Stave of Youthful Sorrow
						},
					}),
					q(13364, {	-- Tirion's Gambit (H)
						["qg"] = 31044,	-- Highlord Tirion Fordring
						["sourceQuest"] = 13363,	-- Argent Aid
						["coord"] = { 79.7, 71.7, ICECROWN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(44745),	-- Blade of the Empty Void
							i(44747),	-- Hammer of Wrenching Change
							i(44746),	-- Knife of the Tarnished Soul
							i(44748),	-- Stave of Youthful Sorrow
						},
					}),
					q(13402, {	-- Tirion's Help
						["qg"] = 29799,	-- Thassarian
						["sourceQuest"] = 13401,	-- Knowledge is a Terrible Burden
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
					q(12806, {	-- To the Rise with all Due Haste!
						["qg"] = 29343,	-- Baron Sliver
						["sourceQuest"] = 12982,	-- Ebon Blade Prisoners
						["coord"] = { 42.8, 24.9, ICECROWN },
						["isBreadcrumb"] = true,
					}),
					q(13376, {	-- Total Ohmage: The Valley of Lost Hope!
						["qg"] = 32430,	-- Fringe Engineer Tezzla
						["sourceQuest"] = 13374,	-- Amped for Revolt!
						["coord"] = { 54.0, 36.9, ICECROWN },
						["timeline"] = { REMOVED_4_1_0 },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/50 Bombardment Infantry slain
								["provider"] = { "n", 32399 },	-- Bombardment Infantry
							}),
							objective(2, {	-- 0/20 Gargoyle Ambusher slain
								["provider"] = { "n", 32188 },	-- Gargoyle Ambusher
							}),
							objective(3, {	-- 0/12 Scourge War Machine slain
								["provider"] = { "n", 32154 },	-- Scourge War Machine
							}),
							objective(4, {	-- 0/12 Frostbrood Sentry slain
								["provider"] = { "n", 31721 },	-- Frostbrood Sentry
							}),
						},
					}),
					q(13085, {	-- Vaelen Has Returned
						["qg"] = 29343,	-- Baron Sliver
						["sourceQuest"] = 12951,	-- Let the Baron Know
						["coord"] = { 42.8, 25.0, ICECROWN },
					}),
					q(13084, {	-- Vandalizing Jotunheim
						["qg"] = 30002,	-- Duke Lankral
						["sourceQuest"] = 12951,	-- Let the Baron Know
						["coord"] = { 44.6, 20.4, ICECROWN },
					}),
					q(13155, {	-- Vereth the Cunning
						["qg"] = 30946,	-- Keritose Bloodblade
						["sourceQuests"] = {
							13174,	-- Amidst the Confusion
							13172,	-- Seeds of Chaos
						},
						["coord"] = { 44.0, 24.5, ICECROWN },
					}),
					q(13071, {	-- Vile Like Fire!
						["qg"] = 30216,	-- Vile
						["sourceQuest"] = 12992,	-- Crush Dem Vrykuls!
						["coord"] = { 42.9, 25.5, ICECROWN },
						["maxReputation"] = { FACTION_EBON_BLADE, EXALTED },	-- Knights of the Ebon Blade, Exalted.
						["isDaily"] = true,
					}),
					q(13239, {	-- Volatility
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["sourceQuest"] = 13238,	-- Sky-Reaver Korm Blackscar
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(38736),	-- Smuggler's Bracers
							i(39035),	-- Glacier-Walker's Mukluks
							i(39065),	-- Skycaptain's Belt
							i(39100),	-- Plated Bracelet of the Skies
						},
					}),
					q(13261, {	-- Volatility (daily)
						["qg"] = 30825,	-- Chief Engineer Copperclaw
						["sourceQuest"] = 13239,	-- Volatility
						["description"] = "On Orgrim's Hammer.",
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					warchiefscommand(q(49537, {	-- Warchief's Command: Icecrown!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(13381, {	-- Watts My Target
						["qg"] = 32444,	-- Kibli Killohertz
						["coord"] = { 54.0, 42.8, ICECROWN },
						["timeline"] = { CREATED_3_3_0 },	-- This wasn't seen in Wrath Classic.
						["races"] = ALLIANCE_ONLY,
					}),
					q(13117, {	-- Where Are They Coming From?
						["qg"] = 30631,	-- Darkrider Arly
						["sourceQuests"] = {
							13106,	-- Blackwatch
							12899,	-- The Shadow Vault
						},
						["coord"] = { 35.3, 66.3, ICECROWN },
					}),
					q(13398, {	-- Where Dragons Fell (A)
						["qg"] = 32423,	-- Matthias Lehner
						["sourceQuest"] = 13396,	-- Futility
						["coord"] = { 71.5, 37.6, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					q(13359, {	-- Where Dragons Fell (H)
						["qg"] = 32423,	-- Matthias Lehner
						["sourceQuest"] = 13348,	-- Futility
						["coord"] = { 71.5, 37.6, ICECROWN },
						["races"] = HORDE_ONLY,
					}),
					q(12814, {	-- You'll Need a Gryphon
						["qg"] = 29344,	-- Lord-Commander Arete
						["sourceQuest"] = 12810,	-- Blood in the Water
						["coord"] = { 19.5, 48.1, ICECROWN },
						["groups"] = {
							i(43879),	-- Gryphon Rider's Bracers
							i(43894),	-- Gryphon Hide Moccasins
							i(43933),	-- Gauntlets of Urgency
							i(43846),	-- Helmet of the Dedicated
						},
					}),
					q(13290, {	-- Your Attention, Please
						["qg"] = 30344,	-- High Captain Justin Bartlett
						["sourceQuest"] = 13231,	-- The Broken Front
						["description"] = "On the Skybreaker.",
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(RARES, {
					n(32501, {	-- High Thane Jorfus
						["coords"] = {
							{ 32.0, 69.8, ICECROWN },
							{ 48.6, 80.2, ICECROWN },
							{ 71.8, 37.8, ICECROWN },
						},
						["groups"] = {
							i(44695),	-- Corroded Faceguard
						},
					}),
					n(32495, {	-- Hildana Deathstealer
						["coords"] = {
							{ 31.4, 39.6, ICECROWN },
							{ 56.0, 53.2, ICECROWN },
							{ 59.6, 59.2, ICECROWN },
						},
						["groups"] = {
							i(44697),	-- Val'kyr Vestments
						},
					}),
					n(32487, {	-- Putridus the Ancient
						["coords"] = {
							{ 69.0, 67.2, ICECROWN },
							{ 67.4, 58.0, ICECROWN },
							{ 64.4, 45.8, ICECROWN },
							{ 54.0, 41.2, ICECROWN },
							{ 49.0, 42.8, ICECROWN },
							{ 45.4, 49.8, ICECROWN },
							{ 43.8, 57.8, ICECROWN },
							{ 46.8, 65.2, ICECROWN },
						},
						["groups"] = {
							i(44696),	-- Giant's Toewrap
						},
					}),
				}),
				n(TREASURES, {
					o(191543, {	-- Scarlet Onslaught Trunk
						i(40666),	-- Note from the Grand Admiral
					}),
				}),
				n(VENDORS, {
					n(32538, {	-- Duchess Mynx <Ebon Blade Quartermaster>
						["coord"] = { 43.4, 20.6, ICECROWN },
						["groups"] = bubbleDownClassicRep(FACTION_EBON_BLADE, {
							{		-- Neutral
							}, {	-- Friendly
								i(41562),	-- Design: Deadly Huge Citrine (RECIPE!)
								i(43155),	-- Tabard of the Ebon Blade
							}, {	-- Honored
								i(44138, {	-- Arcanum of Toxic Warding
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44242),	-- Dark Soldier Cape
								i(44512, {	-- Pattern: Nerubian Reinforced Quiver (RECIPE!)
									["timeline"] = { REMOVED_4_0_1 },
								}),
								i(44243),	-- Toxin-Tempered Sabatons
								i(44241),	-- Unholy Persuader
							}, {	-- Revered
								i(44149, {	-- Arcanum of Torment
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								-- #if AFTER CATA
								i(41721),	-- Design: Deadly Monarch Topaz [CATA+] / Design: Wicked Monarch Topaz [WRATH] (RECIPE!)
								-- #else
								i(41721),	-- Design: Wicked Monarch Topaz [WRATH] / Design: Deadly Monarch Topaz [CATA+] (RECIPE!)
								-- #endif
								i(42183),	-- Pattern: Abyssal Bag (RECIPE!)
								i(44250),	-- Reaper of Dark Souls
								i(44249),	-- Runeblade of Demonstrable Power
								i(44257),	-- Spaulders of the Black Arrow
								i(44256),	-- Sterile Flesh-Handling Gloves
								i(44258),	-- Wound-Binder Wristguards
							}, {	-- Exalted
								i(44302),	-- Belt of Dark Mending
								i(44303),	-- Darkheart Chestguard
								i(44306),	-- Death-Insured Sabatons
								-- #if AFTER CATA
								i(41725),	-- Design: Timeless Twilight Opal [CATA+] / Design: Glowing Twilight Opal [WRATH] (RECIPE!)
								-- #else
								i(41725),	-- Design: Glowing Twilight Opal [WRATH] / Design: Timeless Twilight Opal [CATA+] (RECIPE!)
								-- #endif
								i(44305),	-- Kilt of Dark Mercy
							},
						}),
					}),
					n(30067, {	-- Initiate Claget <Blades>
						["coord"] = { 20.4, 47.8, ICECROWN },
						["groups"] = {
							i(40005),	-- Forsaken Blade
							i(40004),	-- Forsaken Greatsword
							i(40006),	-- Forsaken Sword
							i(40007, {	-- Forsaken Throwing Knife
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					n(30431, {	-- Veteran Crusader Aliocha Segard <Argent Crusade Quartermaster>
						["coord"] = { 87.6, 75.6, ICECROWN },
						["groups"] = bubbleDownClassicRep(FACTION_ARGENT_CRUSADE, {
							{		-- Neutral
							}, {	-- Friendly
								i(43154),	-- Tabard of the Argent Crusade
							}, {	-- Honored
								i(44139, {	-- Arcanum of the Fleeing Shadow
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44216),	-- Cloak of Holy Extermination
								i(44240),	-- Special Issue Legplates
								i(44239),	-- Standard Issue Legplates
							}, {	-- Revered
								i(44150, {	-- Arcanum of the Stalwart Protector
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44244),	-- Argent Skeleton Crusher
								i(44248),	-- Battle Mender's Helm
								i(41726),	-- Design: Guardian's Twilight Opal (RECIPE!)
								i(44247),	-- Fang-Deflecting Faceguard
								i(44214),	-- Purifying Torch
								i(44245),	-- Zombie Sweeper Shotgun
							}, {	-- Exalted
								i(44297),	-- Boots of the Neverending Path
								i(44296),	-- Helm of Purified Thoughts
								i(42187),	-- Pattern: Brilliant Spellthread (RECIPE!)
								i(44295),	-- Polished Regimental Hauberk
								i(44283),	-- Signet of Hopeful Light
							},
						}),
					}),
				}),
				n(ZONE_DROPS, {
					-- #if AFTER SL
					i(50379),	-- Battered Hilt (Alliance) - These are dropping zone-wide during Shadowlands Prepatch Event; remains to be seen whether they will permanently drop from here.
					i(50380),	-- Battered Hilt (Horde)
					-- #endif
					i(37330, {	-- Formula: Enchant Cloak - Superior Arcane Resistance (RECIPE!)
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						["crs"] = {
							32297,	-- Cult Researcher
							31702,	-- Frostbrood Spawn
						},
					}),
					i(37331, {	-- Formula: Enchant Cloak - Superior Fire Resistance (RECIPE!)
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						["crs"] = {
							31321,	-- Skeletal Runesmith
							30921,	-- Skeletal Runesmith
						},
					}),
					i(37332, {	-- Formula: Enchant Cloak - Superior Frost Resistance (RECIPE!)
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						["cr"] = 32289,	-- Damned Apothecary
					}),
					i(37333, {	-- Formula: Enchant Cloak - Superior Nature Resistance (RECIPE!)
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						["cr"] = 32290,	-- Cult Alchemist
					}),
					i(37334, {	-- Formula: Enchant Cloak - Superior Shadow Resistance (RECIPE!)
						["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						["cr"] = 32349,	-- Cultist Shard Watcher
					}),
					i(44563, {	-- Pattern: Fur Lining - Arcane Resist (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_5_0_4 },
						["crs"] = {
							32297,	-- Cult Researcher
							31702,	-- Frostbrood Spawn
						},
					}),
					i(44559, {	-- Pattern: Fur Lining - Fire Resist (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_5_0_4 },
						["crs"] = {
							31321,	-- Skeletal Runesmith
							30921,	-- Skeletal Runesmith
						},
					}),
					i(44560, {	-- Pattern: Fur Lining - Frost Resist (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_5_0_4 },
						["cr"] = 32289,	-- Damned Apothecary
					}),
					i(44562, {	-- Pattern: Fur Lining - Nature Resist (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_5_0_4 },
						["cr"] = 32290,	-- Cult Alchemist <Cult of the Damned>
					}),
					i(44561, {	-- Pattern: Fur Lining - Shadow Resist (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_5_0_4 },
						["cr"] = 32349,	-- Cultist Shard Watcher
					}),
					i(44564, {	-- Recipe: Mighty Arcane Protection Potion (RECIPE!)
						["coord"] = { 50.1, 31.8, ICECROWN },
						["crs"] = {
							32297,	-- Cult Researcher
							31702,	-- Frostbrood Spawn
						},
					}),
					i(44565, {	-- Recipe: Mighty Fire Protection Potion (RECIPE!)
						["coord"] = { 58.5, 73.1, ICECROWN },
						["crs"] = {
							31321,	-- Skeletal Runesmith
							30921,	-- Skeletal Runesmith
							31320,	-- Umbral Brute
							30922,	-- Umbral Brute
						},
					}),
					i(44566, {	-- Recipe: Mighty Frost Protection Potion (RECIPE!)
						["coord"] = { 52.1, 32.0, ICECROWN },
						["cr"] = 32289,	-- Damned Apothecary
					}),
					i(44567, {	-- Recipe: Mighty Nature Protection Potion (RECIPE!)
						["coord"] = { 50.1, 31.8, ICECROWN },
						["cr"] = 32290,	-- Cult Alchemist <Cult of the Damned>
					}),
					i(44568, {	-- Recipe: Mighty Shadow Protection Potion (RECIPE!)
						["coord"] = { 48.0, 67.8, ICECROWN },
						["cr"] = 32349,	-- Cultist Shard Watcher
					}),
				}),
			},
		}),
	})),
});