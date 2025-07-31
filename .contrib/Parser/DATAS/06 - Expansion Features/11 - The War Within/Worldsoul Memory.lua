-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
WORLDSOUL_MEMORY = createHeader({
	readable = "Worldsoul Memory",
	icon = 2967107,
	text = {
		en = WOWAPI_GetSpellName(445256),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(WORLDSOUL_MEMORY, {
		["providers"] = {
			-- TODO set preprocessor to season start timeline specifically
			-- #if AFTER 11.2.0
			{ "i", 246771 },	-- Radiant Echo
			-- #elseif AFTER 11.1.0.59490
			{ "i", 235897 },	-- Radiant Echo
			-- #else
			{ "i", 220520 },	-- Radiant Echo
			-- #endif
			{ "n", 222165 },	-- Worldsoul Memory
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(40252),	-- A Series of Echoes (automated)
				ach(40222, {	-- Echoes of Danger (automated)
					title(576),	-- Echochaser <Name>
				}),
				ach(41215, {	-- Echoes of Deeper Dangers (automated)
					["maps"] = { UNDERMINE },
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
				ach(40314, {	-- Fragments of Memories (automated)
					i(224251),	-- Memory Chord (TOY!)
				}),
				ach(40251),	-- Many Echoes
				ach(40250),	-- The First Echo
				ach(41214, {	-- Under the Echoes
					["maps"] = { UNDERMINE },
					["timeline"] = { ADDED_11_1_0_SEASONSTART },
				}),
			}),
			n(QUESTS, {
				q(84542, {	-- A Radiant Echo
					["provider"] = { "i", 228958 },	-- Radiant Echo
					["timeline"] = { REMOVED_11_1_0_SEASONSTART },
				}),
				q(87284, {	-- A Radiant Echo
					["provider"] = { "i", 235896 },	-- Radiant Echo
					["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
				}),
				q(91539, {	-- A Radiant Echo
					["provider"] = { "i", 246772 },	-- Radiant Echo
					["timeline"] = { ADDED_11_2_0_SEASONSTART },
				}),
				q(82285, {	-- Worldsoul Memory: A Wounded Soul
					["coord"] = { 65.2, 56.1, AZJ_KAHET },
					["repeatable"] = true,
					["groups"] = {
						n(222670),	-- Azerite Manifistation
						n(222658, {	-- Dregblood and Soulboil (Dregbile)
							["crs"] = { 224282 },	-- Soulboil
						}),
						n(222667),	-- Heartsear
						n(222660),	-- Shard of Gorribal
						n(224282),	-- Soulboil
						n(222671),	-- Windowcore
						i(225237),	-- Echoing Fragment: Azj-Kahet (CI!)
					},
				}),
				q(82321, {	-- Worldsoul Memory: Ancient Explorers
					["coord"] = { 55.6, 77.7, ISLE_OF_DORN },
					["repeatable"] = true,
					["groups"] = {
						n(222733),	-- Stormlord Kao'dor
						n(222723),	-- Conqueror Or'sosh
						n(222659),	-- Toaka the Explorer
						n(223896),	-- Warmonger Ogli
						n(222728),	-- Wavecrusher Jurvak
						i(225236),	-- Echoing Fragment: Isle of Dorn (CI!)
					},
				}),
				q(82207, {	-- Worldsoul Memory: Descendants of Distant Waters
					["coord"] = { 46.8, 23.4, HALLOWFALL },
					["repeatable"] = true,
					["groups"] = {
						n(222637),	-- Ankoan Champion Utaari
						n(222655),	-- Gurl The Feaster
						n(222621),	-- Hand of Azshara
						n(222627),	-- Utmoth the Tidetwister
						n(222639),	-- Zaniga The Tracker
						i(225218),	-- Echoing Fragment: Hallowfall (CI!)
					},
				}),
				q(86476, {	-- Worldsoul Memory: Early Cartel Wars
					["coord"] = { 43.3, 14.4, UNDERMINE },
					["timeline"] = { ADDED_11_1_0 },
					["repeatable"] = true,
					["groups"] = {
						n(235071),	-- Peet the Wheedler
						n(235072),	-- Vynnie Samophlangus
						n(235073),	-- Madam Colada
						n(235074),	-- Mookcenary Captain Freg (Freg)
						n(235075),	-- Prototype Shredder Unit (Prototype of Mass Destruction)
					},
				}),
				q(82263, {	-- Worldsoul Memory: Elemental Fury
					["coord"] = { 43.6, 10.7, THE_RINGING_DEEPS },
					["repeatable"] = true,
					["groups"] = {
						n(222791),	-- Crateron
						n(222756),	-- Deepwalker Cavelord
						n(222741),	-- Earthfury Cragshar
						n(222762),	-- Flame Viscerator Ignes
						n(222743),	-- Oremex Flamebreaker
						n(228141),	-- Treasure Elemental
						i(225219),	-- Echoing Fragment: The Ringing Deeps (CI!)
					},
				}),
				q(86477, {	-- Worldsoul Memory: Kaja'mite Contact
					["coord"] = { 58.2, 68.6, UNDERMINE },
					["timeline"] = { ADDED_11_1_0 },
					["repeatable"] = true,
					["groups"] = {
						n(235113),	-- Deep-King Grobrosh
						n(235116),	-- Geomancer Keeri
						n(235115),	-- Massive Kaja'mental
						n(235112),	-- Roxarix the CaveBorer
						n(235117),	-- Taskmaster Zendu
					},
				}),
				q(82286, {	-- Worldsoul Memory: Old Gods Forsaken
					["coord"] = { 21.1, 45.5, NERUBAR },
					["repeatable"] = true,
					["groups"] = {
						n(222654),	-- Spiz'na the Traitor
						n(222616),	-- The Rebellious Queen
						n(222626),	-- Vil'vim The Mindtwister
						n(222630),	-- Vin'ris The Corruptor
						n(222628),	-- Yoh'nath The Ender
						i(225237),	-- Echoing Fragment: Azj-Kahet (CI!)
					},
				}),
				q(82260, {	-- Worldsoul Memory: Primal Predators
					["coord"] = { 59.5, 69.8, THE_RINGING_DEEPS },
					["repeatable"] = true,
					["groups"] = {
						n(222682),	-- Clawmother Tengi
						n(222720),	-- Kiji the Stomper
						n(222691),	-- Nalo'xic
						n(222718),	-- Pterrordaxus
						n(222690),	-- Tor'go
						i(225219),	-- Echoing Fragment: The Ringing Deeps (CI!)
					},
				}),
				q(82164, {	-- Worldsoul Memory: Reign of The Old Gods
					["coord"] = { 60.7, 67.5, HALLOWFALL },
					["repeatable"] = true,
					["groups"] = {
						n(222605),	-- Aqu'yinra
						n(222611),	-- Bor'zal the Lurking
						n(228901),	-- Dark Prophet Grshol
						n(222629),	-- S'toth the Insatiable
						n(222640),	-- Venox
						n(222632),	-- Yor'sith
						i(225218),	-- Echoing Fragment: Hallowfall (CI!)
					},
				}),
				q(81985, {	-- Worldsoul Memory: The Worldcarvers
					["coord"] = { 51.2, 29.2, ISLE_OF_DORN },
					["repeatable"] = true,
					["groups"] = {
						n(221970),	-- First Blade Grimskarn
						n(221974),	-- Gong'tze the Riverhewer
						n(221972),	-- Talinhet
						n(221973),	-- Temaya
						n(221975),	-- Zeeben
						n(221976),	-- Zillix
						i(225236),	-- Echoing Fragment: Isle of Dorn (CI!)
					},
				}),
			}),
		},
	}),
})));
