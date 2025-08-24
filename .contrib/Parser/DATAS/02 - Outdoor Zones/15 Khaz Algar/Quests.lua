---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
	n(QUESTS, {
		q(81930, {	-- The War Within [A]
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(227669),	-- Teleportation Scroll (QI!)
			},
		}),
		q(78713, {	-- The War Within [H]
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(227669),	-- Teleportation Scroll (QI!)
			},
		}),
		q(78714, {	-- A Poor Reception
			["sourceQuests"] = {
				81930,	-- The War Within [A]
				78713,	-- The War Within [H]
			},
			["sourceQuestNumRequired"] = 1,
			["provider"] = { "n", 213620 },	-- Thrall
			["coord"] = { 41.9, 45.0, SILITHUS_THE_WOUND },
			["maps"] = { 2321 },	-- Chamber of Heart
		}),
		q(78715, {	-- Azeroth's Voice
			["sourceQuests"] = { 78714 },	-- A Poor Reception
			["provider"] = { "n", 213624 },	-- Magni Bronzebeard
			["coord"] = { 50.1, 64.4, 2321 },	-- Chamber of Heart
		}),
		q(78716, {	-- Painful Lessons
			["sourceQuests"] = { 78715 },	-- Azeroth's Voice
			["provider"] = { "n", 213625 },	-- Lady Jaina Proudmoore
			["coord"] = { 49.5, 58.6, 2321 },	-- Chamber of Heart
		}),
		q(80500, {	-- The Bronzebeard Family
			["sourceQuests"] = { 78716 },	-- Painful Lessons
			["provider"] = { "n", 214651 },	-- Moira Thaurissan
			["coord"] = { 40.5, 57.7, AEGWYNNS_GALLERY },
		}),
		header(HEADERS.Achievement, 20597, {	-- The War Within
			header(HEADERS.AchCriteria, 20597.01, {	-- Against the Current
				------ Chapter 1 ------
				q(79197, {	-- Surface Bound
					["sourceQuests"] = { 84022 },	-- Uniting Severed Threads
					["provider"] = { "n", 219252 },	-- Alleria Windrunner
					["coord"] = { 55.6, 44.2, AZJ_KAHET },
					["groups"] = {
						hqt(79573, name(HEADERS.AchCriteria, 40725.02)),	-- War Within Delves: Endgame [Complete Campaign]
					},
				}),
				q(84446, {	-- Renown of Khaz Algar
					["sourceQuests"] = { 79197 },	-- Surface Bound
					["provider"] = { "n", 216149 },	-- Moira Thaurissan
					["coord"] = { 36.1, 80.3, DORNOGAL },
					["lockCriteria"] = { 1, "renownID", FACTION_COUNCIL_OF_DORNOGAL + 0.05 },	-- Council of Dornogal, Rank 5
				}),
				q(79333, {	-- The Fleet Arrives
					["sourceQuests"] = { 79197 },	-- Surface Bound
					["provider"] = { "n", 216149 },	-- Moira Thaurissan
					["coord"] = { 36.1, 80.3, DORNOGAL },
				}),
				q(82153, {	-- Embassies and Envoys [A]
					["sourceQuests"] = { 79333 },	-- The Fleet Arrives
					["provider"] = { "n", 216168 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.9, 81.5, DORNOGAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(223588),	-- Algari Fighting Knife
						i(223549),	-- Algari Greatsword
						i(223547),	-- Algari Heavy Staff
						i(223548),	-- Algari Rifle
						i(223584),	-- Algari Scepter
						i(223564),	-- Algari Short Axe
						i(223546),	-- Algari Spear
						i(223569),	-- Algari Spellcleaver
					},
				}),
				q(79328, {	-- Embassies and Envoys [H]
					["sourceQuests"] = { 79333 },	-- The Fleet Arrives
					["provider"] = { "n", 216167 },	-- Thrall
					["coord"] = { 36.2, 81.5, DORNOGAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(223588),	-- Algari Fighting Knife
						i(223549),	-- Algari Greatsword
						i(223547),	-- Algari Heavy Staff
						i(223548),	-- Algari Rifle
						i(223584),	-- Algari Scepter
						i(223564),	-- Algari Short Axe
						i(223546),	-- Algari Spear
						i(223569),	-- Algari Spellcleaver
					},
				}),
				------ Stay awhile and listen ------
				hqt(84009, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["provider"] = { "n", 216148 },	-- Alleria Windrunner
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A] (Accepted)
						79328,	-- Embassies and Envoys [H] (Accepted)
					},
					["coord"] = { 35.9, 80.8, DORNOGAL },
				}),
				hqt(84345, {	-- Stay awhile and Listen: High Exarch Turalyon
					["name"] = "Stay awhile and listen: High Exarch Turalyon",
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A] (Completed)
						79328,	-- Embassies and Envoys [H] (Completed)
					},
					["provider"] = { "n", 226650 },	-- High Exarch Turalyon
					["coord"] = { 31.6, 59.6, DORNOGAL },
				}),
				--
				q(83271, {	-- There's Always Another Secret
					["sourceQuests"] = {
						82153,	-- Embassies and Envoys [A]
						79328,	-- Embassies and Envoys [H]
					},
					["provider"] = { "n", 214917 },	-- Moira Thaurissan
					["coord"] = { 31.8, 59.4, DORNOGAL },
				}),
				q(83286, {	-- What's Hidden Beneath Dornogal
					["sourceQuests"] = { 83271 },	-- There's Always Another Secret
					["provider"] = { "n", 226040 },	-- Speaker Brinthe
					["coord"] = { 49.9, 60.8, VAULT_OF_MEMORY },
				}),
				------ Stay awhile and listen ------
				hqt(84814, {	-- Stay awhile and listen: Dagran Thaurissan II
					["name"] = "Stay awhile and listen: Dagran Thaurissan II (Vault of Memory)",
					["sourceQuests"] = { 83286 },	-- What's Hidden Beneath Dornogal
					["provider"] = { "n", 217859 },	-- Dagran Thaurissan II
					["coord"] = { 50.8, 61.7, VAULT_OF_MEMORY },
				}),
				--
				q(83315, {	-- Preparing for the Unknown
					["sourceQuests"] = { 83286 },	-- What's Hidden Beneath Dornogal
					["provider"] = { "n", 226040 },	-- Speaker Brinthe
					["coord"] = { 49.9, 60.8, VAULT_OF_MEMORY },
				}),
				------ Stay awhile and listen ------
				hqt(85682, {	-- Stay awhile and listen: Magni Bronzebeard
					["name"] = "Stay awhile and listen: Magni Bronzebeard",
					["sourceQuests"] = { 83315 },	-- Preparing for the Unknown (Completed)
					["provider"] = { "n", 233267 },	-- Magni Bronzebeard
					["coord"] = { 31.7, 59.3, DORNOGAL },
					-- TODO needs lockCriteria, who wanna test
				}),
				--
				q(79344, {	-- Urban Odyssey
					["sourceQuests"] = { 83315 },	-- Preparing for the Unknown
					["provider"] = { "n", 214917 },	-- Moira Thaurissan
					["coord"] = { 31.8, 59.3, DORNOGAL },
				}),
			}),
			header(HEADERS.AchCriteria, 20597.02, {	-- Ties That Bind
				------ Chapter 2 ------
				q(79107, {	-- After the Storm
					["sourceQuests"] = { 79344 },	-- Urban Odyssey
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.5, 59.7, DORNOGAL },
				}),
				q(81914, {	-- Dhar Oztan
					["sourceQuests"] = { 79107 },	-- After the Storm
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 37.4, 82.2, DORNOGAL },
				}),
				------ Stay awhile and listen ------
				hqt(82542, {	-- Stay awhile and listen: Rooktender Lufsela
					["name"] = "Stay awhile and listen: Rooktender Lufsela",
					["sourceQuests"] = { 81914 },	-- Dhar Oztan (Accepted)
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 37.5, 82.2, DORNOGAL },
				}),
				--
				q(79124, {	-- Conduit of the Southern Storm
					["sourceQuests"] = { 81914 },	-- Dhar Oztan
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 28.5, 61.0, ISLE_OF_DORN },
					["groups"] = {
						i(218455),	-- Conduit of the Southern Storm (QI!)
					},
				}),
				q(79475, {	-- Charging Up That Hill
					["sourceQuests"] = { 79124 },	-- Conduit of the Southern Storm
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 27.6, 60.5, ISLE_OF_DORN },
				}),
				q(79476, {	-- Heeding the Call
					["sourceQuests"] = { 79124 },	-- Conduit of the Southern Storm
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 27.6, 60.5, ISLE_OF_DORN },
				}),
				q(79129, {	-- Rook Rally
					["sourceQuests"] = {
						79475,	-- Charging Up That Hill
						79476,	-- Heeding the Call
					},
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 25.6, 57.2, ISLE_OF_DORN },
					["groups"] = {
						i(223453),	-- Lightning-Scarred Coif
						i(223427),	-- Lightning-Scarred Cowl
						i(223465),	-- Lightning-Scarred Legguards
						i(223447),	-- Lightning-Scarred Vest
					},
				}),
				q(79146, {	-- Ground Pounders
					["sourceQuests"] = { 79129 },	-- Rook Rally
					["provider"] = { "n", 214919 },	-- Thrall
					["coord"] = { 27.8, 60.8, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(84813, {	-- Stay awhile and listen: Rooktender Lufsela
					["description"] = "Dialogue becomes available after accepting 'Ground Pounders' (79146).",
					["name"] = "Stay awhile and listen: Rooktender Lufsela",
					["sourceQuests"] = { 79129 },	-- Rook Rally
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 27.8, 60.8, ISLE_OF_DORN },
				}),
				--
				q(79140, {	-- Goldbricking
					["sourceQuests"] = { 79146 },	-- Ground Pounders
					["provider"] = { "n", 215187 },	-- Overlord Geya'rah
					["coord"] = { 33.2, 63.3, ISLE_OF_DORN },
				}),
				q(79145, {	-- Metal and Stone
					["sourceQuests"] = { 79146 },	-- Ground Pounders
					["provider"] = { "n", 223205 },	-- High Exarch Turalyon
					["coord"] = { 33.3, 63.3, ISLE_OF_DORN },
					["groups"] = {
						i(223875),	-- Algari Censer
						i(223874),	-- Algari Dagger
						i(223877),	-- Algari Hatchet
						i(223871),	-- Algari Heavy Axe
						i(223872),	-- Algari Mace
						i(223873),	-- Algari Shield
						i(223876),	-- Algari Warglaive
					},
				}),
				q(81915, {	-- Home to Roost
					["sourceQuests"] = {
						79140,	-- Goldbricking
						79145,	-- Metal and Stone
					},
					["provider"] = { "n", 215277 },	-- Adelgonn
					["coord"] = { 33.3, 63.3, ISLE_OF_DORN },
				}),
				q(79477, {	-- Strays
					["sourceQuests"] = { 81915 },	-- Home to Roost
					["provider"] = { "n", 215039 },	-- Rooktender Lufsela
					["coord"] = { 28.9, 61.7, ISLE_OF_DORN },
				}),
				q(79147, {	-- Flight Training 101
					["sourceQuests"] = { 79477 },	-- Strays
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 29.0, 61.5, ISLE_OF_DORN },
				}),
				q(81912, {	-- Flight Training 102
					["sourceQuests"] = { 79147 },	-- Flight Training 101
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 35.0, 72.2, ISLE_OF_DORN },
				}),
				q(81913, {	-- Flight Training 103
					["sourceQuests"] = { 81912 },	-- Flight Training 102
					["provider"] = { "n", 215211 },	-- Kurdan Wildhammer
					["coord"] = { 61.7, 65.5, ISLE_OF_DORN },
					["groups"] = {
						i(224161),	-- Stormrider Flight Badge
					},
				}),
				q(79480, {	-- Paying Respects
					["sourceQuests"] = { 81913 },	-- Flight Training 103
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 75.9, 39.8, ISLE_OF_DORN },
				}),
				q(79156, {	-- The Edicts
					["sourceQuests"] = { 79480 },	-- Paying Respects
					["provider"] = { "n", 214995 },	-- Olbarig
					["coord"] = { 76.5, 35.6, ISLE_OF_DORN },
				}),
				q(79157, {	-- Titanic Failsafe
					["sourceQuests"] = { 79156 },	-- The Edicts
					["provider"] = { "n", 214916 },	-- Merrix
					["coord"] = { 57.1, 50.5, ISLE_OF_DORN },
					["groups"] = {
						i(223468),	-- Stormrider's Armplates
						i(223446),	-- Stormrider's Bindings
						i(223457),	-- Stormrider's Bracers
						i(223428),	-- Stormrider's Cuffs
					},
				}),
				------ Stay awhile and listen ------
				hqt(82541, {	-- Stay awhile and listen: Merrix <Councilward>
					["name"] = "Stay awhile and listen: Merrix <Councilward>",
					["description"] = "Dialogue becomes available after completing 'Titanic Failsafe' (79157).",
					["sourceQuests"] = { 79157 },	-- Titanic Failsafe
					["provider"] = { "n", 214916 },	-- Merrix <Councilward>
					["coord"] = { 31.8, 61.0, DORNOGAL },
				}),
			}),
			header(HEADERS.AchCriteria, 20597.03, {	-- News from Below
				------ Chapter 3 ------
				q(79224, {	-- Gathering Intel
					["sourceQuests"] = { 79157 },	-- Titanic Failsafe
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.6, 59.6, DORNOGAL },
				}),
				q(79227, {	-- A Spider's-Eye View
					["sourceQuests"] = { 79224 },	-- Gathering Intel
					["provider"] = { "n", 207471 },	-- Widow Arak'nai
					["coord"] = { 55.6, 43.9, AZJ_KAHET },
				}),
				q(79230, {	-- Creeping Through Corridors
					["sourceQuests"] = { 79227 },	-- A Spider's-Eye View
					["provider"] = { "n", 215626 },	-- Lilian Voss
					["coord"] = { 69.5, 71.7, NERUBAR },
				}),
				q(79233, {	-- Lab Access
					["sourceQuests"] = { 79227 },	-- A Spider's-Eye View
					["provider"] = { "n", 215637 },	-- Y'tekhi
					["coord"] = { 69.5, 72.2, NERUBAR },
					["groups"] = {
						i(215457),	-- Loyalist Secretions (QI!)
					},
				}),
				q(79237, {	-- Making of a Monster
					["sourceQuests"] = {
						79230,	-- Creeping Through Corridors
						79233,	-- Lab Access
					},
					["provider"] = { "n", 215628 },	-- Lilian Voss
					["coord"] = { 56.7, 90.6, NERUBAR },
					["groups"] = {
						i(223431),	-- The Fallen Queen's Band
					},
				}),
				q(79239, {	-- The Queen's Chains
					["sourceQuests"] = { 79237 },	-- Making of a Monster
					["provider"] = { "n", 215659 },	-- Y'tekhi
					["coord"] = { 57.1, 91.0, NERUBAR },
				}),
				q(79240, {	-- Rogue Agent
					["sourceQuests"] = { 79239 },	-- The Queen's Chains
					["provider"] = { "n", 215661 },	-- Lilian Voss
					["coord"] = { 78.8, 57.3, NERUBAR },
				}),
				q(79241, {	-- Go Loud
					["sourceQuests"] = { 79240 },	-- Rogue Agent
					["provider"] = { "n", 215662 },	-- Lilian Voss
					["coord"] = { 78.6, 39.6, NERUBAR },
				}),
				q(79243, {	-- Manufactured Mutiny
					["sourceQuests"] = { 79240 },	-- Rogue Agent
					["provider"] = { "n", 215662 },	-- Lilian Voss
					["coord"] = { 78.6, 39.6, NERUBAR },
				}),
				q(79244, {	-- News From Below
					["sourceQuests"] = {
						79241,	-- Go Loud
						79243,	-- Manufactured Mutiny
					},
					["provider"] = { "n", 215625 },	-- Lilian Voss
					["coord"] = { 55.7, 44.1, AZJ_KAHET },
					["groups"] = {
						i(223437),	-- Handwraps of the Weaver
						i(223466),	-- Mantle of the Weaver
						i(223445),	-- Sash of the Weaver
						i(223455),	-- Shoulderguards of the Weaver
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20597.04, {	-- The Machines March to War
				------ Chapter 4 ------
				q(79022, {	-- A Mysterious Signal
					["sourceQuests"] = { 79244 },	-- News From Below
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.5, 59.7, DORNOGAL },
				}),
				q(79023, {	-- Small Friend, Big Plans
					["sourceQuests"] = { 79022 },	-- A Mysterious Signal
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
				}),
				q(79024, {	-- Factory Recon
					["sourceQuests"] = { 79023 },	-- Small Friend, Big Plans
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
					["groups"] = {
						i(223448),	-- Epaulets of the Ringing Deeps
						i(223452),	-- Grips of the Ringing Deeps
						i(223436),	-- Light Boots of the Ringing Deeps
						i(223463),	-- Sabatons of the Ringing Deeps
					},
				}),
				q(79217, {	-- Back to Base
					["sourceQuests"] = { 79024 },	-- Factory Recon
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
				}),
				q(79025, {	-- A Plan Comes Together
					["sourceQuests"] = { 79217 },	-- Back to Base
					["provider"] = { "n", 217245 },	-- High Speaker Brinthe
					["coord"] = { 47.1, 34.2, THE_RINGING_DEEPS },
				}),
				q(79324, {	-- To the Waterworks
					["sourceQuests"] = { 79025 },	-- A Plan Comes Together
					["provider"] = { "n", 217245 },	-- High Speaker Brinthe
					["coord"] = { 47.1, 34.2, THE_RINGING_DEEPS },
				}),
				q(79026, {	-- Putting the Works in Waterworks
					["sourceQuests"] = { 79324 },	-- To the Waterworks
					["provider"] = { "n", 217331 },	-- Dagran Thaurissan II
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
				}),
				q(79027, {	-- Elemental Trepidation
					["sourceQuests"] = { 79324 },	-- To the Waterworks
					["provider"] = { "n", 216137 },	-- ZZ-01-47
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
					["groups"] = {
						i(223435),	-- Element-Attuned Pendant
					},
				}),
				q(79325, {	-- Shadowvein Extraction
					["sourceQuests"] = {
						79027,	-- Elemental Trepidation
						79026,	-- Putting the Works in Waterworks
					},
					["provider"] = { "n", 217331 },	-- Dagran Thaurissan II
					["coord"] = { 47.3, 42.4, THE_RINGING_DEEPS },
				}),
				q(79028, {	-- We Require More Minerals
					["sourceQuests"] = { 79325 },	-- Shadowvein Extraction
					["provider"] = { "n", 216140 },	-- ZZ-01-47
					["coord"] = { 55.7, 41.1, THE_RINGING_DEEPS },
				}),
				q(80145, {	-- The Motherlode
					["sourceQuests"] = { 79028 },	-- We Require More Minerals
					["provider"] = { "n", 218622 },	-- ZZ-01-47
					--["coord"] = { x, y, THE_RINGING_DEEPS },	-- following player
				}),
				q(80517, {	-- Back to Where it Began
					["sourceQuests"] = { 80145 },	-- The Motherlode
					["provider"] = { "n", 218622 },	-- ZZ-01-47
					--["coord"] = { x, y, THE_RINGING_DEEPS },	-- following player
				}),
				q(79029, {	-- It's Sabotage
					["sourceQuests"] = { 80517 },	-- Back to Where it Began
					["provider"] = { "n", 214663 },	-- High Speaker Brinthe
					["coord"] = { 56.3, 74.9, THE_RINGING_DEEPS },
					["groups"] = {
						i(223467),	-- Saboteur's Girdle
						i(223442),	-- Saboteur's Grips
						i(223440),	-- Saboteur's Shoulderpads
						i(223451),	-- Saboteur's Striders
					},
				}),
				q(79030, {	-- The Voice of the Speakers
					["sourceQuests"] = { 79029 },	-- It's Sabotage
					["provider"] = { "n", 220928 },	-- High Speaker Brinthe
					["coord"] = { 56.1, 77.6, THE_RINGING_DEEPS },
					["groups"] = {
						-- crit 'The Machines March to War'
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20597.05, {	-- A Light in the Dark
				q(78941, {	-- A Tide Needing Turned
					["sourceQuests"] = { 79030 },	-- The Voice of the Speakers
					["provider"] = { "n", 223944 },	-- Alleria Windrunner
					["coord"] = { 31.7, 59.6, DORNOGAL },
				}),
				q(78942, {	-- The Might of Khaz Algar
					["sourceQuests"] = { 78941 },	-- A Tide Needing Turned
					["provider"] = { "n", 214271 },	-- General Steelstrike
					["coord"] = { 71.6, 59.1, HALLOWFALL },
				}),
				q(78943, {	-- Steel and Flames
					["sourceQuests"] = { 78941 },	-- A Tide Needing Turned
					["provider"] = { "n", 214271 },	-- General Steelstrike
					["coord"] = { 71.6, 59.1, HALLOWFALL },
					["groups"] = {
						i(223454),	-- Algari Warden's Greaves
						i(223461),	-- Algari Warden's Helm
						i(223443),	-- Algari Warden's Hood
						i(223438),	-- Algari Warden's Vestment
						i(217309),	-- Arathi Warhorn (QI!)
					},
				}),
				q(78950, {	-- Cutting Off the Legs
					["sourceQuests"] = { 78943 },	-- Steel and Flames
					["provider"] = { "n", 214276 },	-- Lady Jaina Proudmoore
					["coord"] = { 68.5, 64.1, HALLOWFALL },
				}),
				q(78948, {	-- A Light in the Dark
					["sourceQuests"] = {
						78942,	-- The Might of Khaz Algar
						78950,	-- Cutting Off the Legs
					},
					["provider"] = { "n", 214273 },	-- Anduin Wrynn
					["coord"] = { 64.5, 61.8, HALLOWFALL },
					["maps"] = { 2330 },	-- Piory of the Sacred Flame (Scenario)
					["groups"] = {
						i(223472),	-- Drape of the Lamplighter
					},
				}),
				q(83503, {	-- Return to Dornogal
					["sourceQuests"] = { 78948 },	-- A Light in the Dark
					["provider"] = { "n", 220688 },	-- Alleria Windrunner
					["coord"] = { 35.9, 35.4, HALLOWFALL },
					["groups"] = {
						-- crit 'A Light in the Dark'
					},
				}),
				------ Stay awhile and listen ------
				hqt(84139, {	-- Stay awhile and listen: Anduin Wrynn
					["name"] = "Stay awhile and listen: Anduin Wrynn",
					["description"] = "Dialogue becomes available after completing 'Return to Dornogal' (83503).",
					["sourceQuests"] = { 83503 },	-- Return to Dornogal
					["provider"] = { "n", 225897 },	-- Anduin Wrynn
					["coord"] = { 25.4, 66.2, DORNOGAL },
				}),
				hqt(84754, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["description"] = "Dialogue becomes available after completing 'Return to Dornogal' (83503).",
					["sourceQuests"] = { 83503 },	-- Return to Dornogal
					["provider"] = { "n", 227758 },	-- Alleria Windrunner
					["coord"] = { 42.4, 26.9, DORNOGAL },
				}),
			}),
		}),
		header(HEADERS.Achievement, 41052, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {	-- Lingering Shadows
			q(82690, {	-- Lingering Shadows
				["provider"] = { "n", 227758 },	-- Alleria Windrunner
				["coord"] = { 42.3, 26.8, DORNOGAL },
			}),
			q(82692, {	-- Price of a Mission
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82693, {	-- Standing in the Way
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82691, {	-- No Breathing Room
				["sourceQuest"] = 82690,	-- Lingering Shadows
				["provider"] = { "n", 224397 },	-- Hannan
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82694, {	-- Together, Alone
				["sourceQuests"] = {
					82692,	-- Price of a Mission
					82693,	-- Standing in the Way
					82691,	-- No Breathing Room
				},
				["provider"] = { "n", 224395 },	-- Orweyna
				["coord"] = { 62.9, 67.5, HALLOWFALL },
			}),
			q(82695, {	-- The Voice
				["sourceQuest"] = 82694,	-- Together, Alone
				["provider"] = { "n", 224740 },	-- Orweyna
				["coord"] = { 24.8, 51.6, HALLOWFALL },
			}),
			q(82696, {	-- Ringing in the Deeps
				["sourceQuest"] = 82695,	-- The Voice
				["provider"] = { "n", 224740 },	-- Orweyna
				["coord"] = { 24.8, 51.6, HALLOWFALL },
			}),
			q(82697, {	-- Good Help These Days
				["sourceQuest"] = 82696,	-- Ringing in the Deeps
				["provider"] = { "n", 224857 },	-- Monte Gazlowe
				["coord"] = { 58.4, 64.7, THE_RINGING_DEEPS },
				["groups"] = {
					n(224864, {	-- Haxle Drillbit
						["coord"] = { 62.4, 75.0, THE_RINGING_DEEPS },
						["groups"] = { i(225913) },	-- Opportunity Work Permit (QI!)
					}),
				},
			}),
			q(82699, {	-- Hey, What's Going On?
				["sourceQuest"] = 82697,	-- Good Help These Days
				["provider"] = { "n", 224874 },	-- Monte Gazlowe
				["coord"] = { 64.5, 79.7, THE_RINGING_DEEPS },
			}),
			q(82698, {	-- Haywired and Hostile
				["sourceQuest"] = 82697,	-- Good Help These Days
				["provider"] = { "n", 224866 },	-- Orweyna
				["coord"] = { 64.4, 79.7, THE_RINGING_DEEPS },
			}),
			q(82700, {	-- Built to Blast
				["sourceQuests"] = {
					82699,	-- Hey, What's Going On?
					82698,	-- Haywired and Hostile
				},
				["provider"] = { "n", 224913 },	-- Renzik "The Shiv"
				["coord"] = { 60.3, 87.0, THE_RINGING_DEEPS },
			}),
			q(82701, {	-- Bat Versus World
				["sourceQuest"] = 82700,	-- Built to Blast
				["provider"] = { "n", 224866 },	-- Orweyna
				["coord"] = { 64.4, 79.7, THE_RINGING_DEEPS },
			}),
			q(82702, {	-- Found Friends
				["sourceQuest"] = 82701,	-- Bat Versus World
				["provider"] = { "n", 224874 },	-- Monte Gazlowe
				["coord"] = { 64.5, 79.7, THE_RINGING_DEEPS },
				["groups"] = {
					ach(41052, {	-- Lingering Shadows
						i(232647),	-- Root Defender's Shield
						i(232646),	-- Root Defender's Spear
					}),
				},
			}),
			q(84701, {	-- The Speaker
				["sourceQuest"] = 82702,	-- Found Friends
				["provider"] = { "n", 227499 },	-- Orweyna
				["coord"] = { 42.2, 27.3, DORNOGAL },
			}),
		})),
		header(HEADERS.Achievement, 40791, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {	-- Fate of the Kirin Tor
			header(HEADERS.AchCriteria, 40791.01, {	-- Arcane Desolation
				q(84223, {	-- Survivor's Guilt
					["sourceQuests"] = {
						83503,	-- Return to Dornogal
						84701,	-- The Speaker
					},
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 42.5, 27.1, DORNOGAL },
					--["groups"] = {
					--	spell(458818),	-- Title: Witness of the Kirin Tor
					--},
				}),
				q(83031, {	-- The Hardest Part
					["sourceQuests"] = { 84223 },	-- Survivor's Guilt
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
				}),
				q(83499, {	-- Arcane Wasteland
					["sourceQuests"] = { 83031 },	-- The Hardest Part
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
					["groups"] = {
						i(225662),	-- Arcane Dust (QI!)
						i(225895),	-- Frostfire Essence (QI!)
						o(454205, { -- Radiant Prism Crystals
							i(225663),	-- Radiant Prism Crystals (QI!)
						}),
					},
				}),
				q(83502, {	-- Lessons in Defensive Magic
					["sourceQuests"] = { 83499 },	-- Arcane Wasteland
					["provider"] = { "n", 225355 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.5, 58.1, ISLE_OF_DORN },
				}),
				q(83539, {	-- Feeling Blue
					["sourceQuests"] = { 83502 },	-- Lessons in Defensive Magic
					["provider"] = { "n", 226895 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.7, 57.9, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(86818, {	-- Stay awhile and listen: Archamge Aethas Sunreaver
					["name"] = "Stay awhile and listen: Archamge Aethas Sunreaver",
					["description"] = "Dialogue becomes available after accepting 'Magic-stealing Kobolds' (83553). Wait for Kalecgos to cast his Mirror Images and fly away.",
					["sourceQuests"] = { 83539 },	-- Feeling Blue
					["provider"] = { "n", 226895 },	-- Archmage Aethas Sunreaver
					["coord"] = { 29.7, 57.9, ISLE_OF_DORN },
				}),
				--
				q(83553, {	-- Magic-stealing Kobolds
					["sourceQuests"] = { 83539 },	-- Feeling Blue
					["provider"] = { "n", 227067 },	-- Kalecgos
					["coord"] = { 29.7, 57.8, ISLE_OF_DORN },
				}),
				q(83554, {	-- Trinkets, Curios and Other Powerful Objects
					["sourceQuests"] = { 83553 },	-- Magic-stealing Kobolds
					["provider"] = { "n", 227063 },	-- Kalecgos
					["coord"] = { 61.7, 41.5, ISLE_OF_DORN },
					["groups"] = {
						i(225920),	-- Stolen Kirin Tor Artifacts (QI!)
						o(454707, { -- Bag of Stolen Goods
							["coords"] = {
								{ 62.1, 40.6, ISLE_OF_DORN },
								{ 64.3, 41.4, ISLE_OF_DORN },
								{ 64.4, 44.1, ISLE_OF_DORN },
								{ 64.3, 43.0, ISLE_OF_DORN },
								{ 63.2, 45.2, ISLE_OF_DORN },
							},
							["groups"] = { i(226162) },	-- Arcane Manuscript (QI!)
						}),
					},
				}),
				q(83555, {	-- Mysterious Necklace
					["sourceQuests"] = { 83553 },	-- Magic-stealing Kobolds
					["provider"] = { "n", 228520 },	-- Kobold Thief
					["coord"] = { 62.1, 41.6, ISLE_OF_DORN },
				}),
				q(83556, {	-- Maybe You Shouldn't Touch That
					["sourceQuests"] = {
						83555,	-- Mysterious Necklace
						83554,	-- Trinkets, Curios and Other Powerful Objects
					},
					["provider"] = { "n", 227375 },	-- Kalecgos
					["coord"] = { 61.5, 42.8, ISLE_OF_DORN },
				}),
				q(83641, {	-- Trapped Between Life and Death
					["sourceQuests"] = {
						83553,	-- Maybe You Shouldn't Touch That
						83555,	-- Mysterious Necklace
					},
					["provider"] = { "n", 227208 },	-- Kalecgos
					--["coord"] = { ??, ??, ISLE_OF_DORN },
				}),
				q(83643, {	-- Somehow We Survived
					["sourceQuests"] = { 83641 },	-- Trapped Between Life and Death
					["provider"] = { "n", 227392 },	-- Kalecgos
					["coord"] = { 61.5, 42.8, ISLE_OF_DORN },
				}),
			}),
			header(HEADERS.AchCriteria, 40791.02, {	-- Strength Amidst Ruins
				q(83723, {	-- A Helping Hand
					["sourceQuests"] = { 83643 },	-- Somehow We Survived
					["provider"] = { "n", 212829 },	-- Lady Jaina Proudmoore
					["coord"] = { 30.9, 57.7, ISLE_OF_DORN },
				}),
				q(83743, {	-- Arcane Cold War
					["sourceQuests"] = { 83723 },	-- A Helping Hand
					["provider"] = { "n", 227409 },	-- Lady Jaina Proudmoore
					["coord"] = { 29.8, 57.8, ISLE_OF_DORN },
				}),
				q(83762, {	-- Critical Mass
					["sourceQuests"] = { 83743 },	-- Arcane Cold War
					["provider"] = { "n", 227529 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.2, 53.1, AZJ_KAHET },
				}),
				q(83763, {	-- Preserve the Legacy
					["sourceQuests"] = { 83762 },	-- Critical Mass
					["provider"] = { "n", 229763 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.5, 52.4, AZJ_KAHET },
					["groups"] = {
						o(465294, { -- Antonidas' Introduction to Arcane Magic
							["coord"] = { 35.7, 51.4, AZJ_KAHET },
							["groups"] = { i(228820) },	-- Antonidas' Introduction to Arcane Magic (QI!)
						}),
						o(465295, { -- Medivh's Karazhan Schematics
							["coord"] = { 35.1, 51.2, AZJ_KAHET },
							["groups"] = { i(228821) },	-- Medivh's Karazhan Schematics (QI!)
						}),
						o(465300, { -- Thalen Songweaver's Notes
							["coord"] = { 36.1, 52.6, AZJ_KAHET },
							["groups"] = { i(228823) },	-- Thalen Songweaver's Notes (QI!)
						}),
					},
				}),
				q(83764, {	-- Too Powerful, Too Dangerous
					["sourceQuests"] = { 83762 },	-- Critical Mass
					["provider"] = { "n", 229763 },	-- Lady Jaina Proudmoore
					["coord"] = { 35.5, 52.4, AZJ_KAHET },
				}),
				q(83773, {	-- Farewell, City of Magic
					["sourceQuests"] = {
						83763,	-- Preserve the Legacy
						83764,	-- Too Powerful, Too Dangerous
					},
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 31.4, 50.9, ISLE_OF_DORN },
				}),
				------ Stay awhile and listen ------
				hqt(86819, {	-- Stay awhile and listen: Archmage Khadgar
					["name"] = "Stay awhile and listen: Archmage Khadgar",
					["description"] = "Dialogue becomes available after completing 'Farewell, City of Magic' (83773). Go back to Khadgar in Foundation Hall, Dornogal.",
					["sourceQuests"] = { 83773 },	-- Farewell, City of Magic
					["provider"] = { "n", 227436 },	-- Archmage Khadgar
					["coord"] = { 42.6, 27.2, DORNOGAL },
				}),
				--
			}),
		})),
	}),
})));
